from django.shortcuts import render
from django.views.generic.base import View
from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponseRedirect, JsonResponse
from apps.organization.models import CourseOrg, City
from apps.organization.forms import AddAskForm
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger


# Create your views here.
class OrgHomeView(View):
    def get(self, request, org_id, *args, **kwargs):
        current_page = "home"
        course_org = CourseOrg.objects.get(id=int(org_id))
        course_org.click_nums += 1
        has_fav = False
        # if request.user.is_authenticated:
        all_courses = course_org.course_set.all()[:3]
        all_teachers = course_org.teacher_set.all()[:3]

        return render(request, "org-detail-homepage.html", {
            'all_course': all_courses,
            'all_teachers': all_teachers,
            "course_org": course_org,
            "current_page": current_page,
            "has_fav" : has_fav,
        })


class AddAskView(View):
    def post(self, request, *args, **kwargs):
        userask_form = AddAskForm(request.POST)
        if userask_form.is_valid():
            userask_form.save(commit=True)
            return JsonResponse({
                'status': "success"
            })
        else:
            return JsonResponse({
                "status": 'fail',
                'msg': "添加出错"

            })


class OrgView(View):
    def get(self, request, *args, **kwargs):
        all_orgs = CourseOrg.objects.all()
        all_city = City.objects.all()
        category = request.GET.get('ct', '')
        hot_orgs = CourseOrg.objects.order_by('-click_nums')[:3]

        if category:
            all_orgs = all_orgs.filter(category=category)
        city_id = request.GET.get('city', '')
        if city_id:
            if city_id.isdigit():  # 判断字符串是否指包含数字
                all_orgs = all_orgs.filter(city_id=int(city_id))
        org_count = all_orgs.count()
        sort = request.GET.get('sort', '')
        if sort == "students":
            all_orgs = all_orgs.order_by('-students')  # order_by 排序 在字段前面加- 表示按照这个字段的倒叙排序
        if sort == "courses":
            all_orgs = all_orgs.order_by('-course_nums')
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        # 机构列表分页
        # 注意要 要提供per_page 参数  一页显示多少条
        p = Paginator(all_orgs, per_page=5, request=request)
        all_orgs = p.page(page)
        return render(request, 'org-list.html',
                      {
                          'hot_orgs': hot_orgs,
                          'org_count': org_count,
                          'all_city': all_city,
                          'category': category,
                          'city_id': city_id,
                          'all_org': all_orgs,
                          'sort': sort
                      })
