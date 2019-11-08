from django.shortcuts import render
from django.views import View
from apps.course.models import *
from django.db.models import Q
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger


# Create your views here.
class CourseListView(View):
    def get(self, request, *args, **kwargs):
        all_courses = Course.objects.order_by("-add_time")
        hot_courses = Course.objects.order_by("-click_nums")[:3]

        # 搜索关键字
        keywords = request.Get.get['keywords', '']
        s_type = "course"
        if keywords:
            all_courses = all_courses.filter(Q(name__icontains=keywords) | Q(desc__contains=keywords))
        sort = request.Get.get["sort", ""]
        if sort == "students":
            all_courses = all_courses.order_by("-students")
        elif sort == "hot":
            all_courses = all_courses.order_by("-click_nums")[:3]
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        # 机构列表分页
        # 注意要 要提供per_page 参数  一页显示多少条
        p = Paginator(all_courses, per_page=1, request=request)
        courses = p.page(page)

        return render(request, "course-list.html", {
            "all_courses": courses,
            "sort": sort,
            "hot_courses": hot_courses,
            "keywords": keywords,
            "s_type": s_type
        })
