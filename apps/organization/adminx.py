import xadmin
from apps.organization.models import Teacher, CourseOrg, City


class TeacherAdmin(object):
    # verbose_name = '课程管理'
    list_display = ['org', 'name', 'work_years', 'work_company']  # xadmin默认显示的字段
    search_fields = ['org', 'name', 'work_years', 'work_company']  # xadmin搜索的字段
    list_filter = ['org', 'name', 'work_years', 'work_company']  # xadmin过滤器的字段
    # list_editable = ['name', 'desc']  # xadmin可直接编辑的字段

    pass


class CourseOrgAdmin(object):
    list_display = ['name', 'address', 'click_nums', 'fav_nums']  # xadmin默认显示的字段
    search_fields = ['name', 'desc', 'click_nums', 'fav_nums']  # xadmin搜索的字段
    list_filter = ['name', 'desc', 'click_nums', 'fav_nums']  # xadmin过滤器的字段

    pass


class CityAdmin(object):
    list_display = ['id', 'name', 'desc']  # xadmin默认显示的字段
    search_fields = ['name', 'desc']  # xadmin搜索的字段
    list_filter = ['name', 'desc', 'add_time']  # xadmin过滤器的字段
    list_editable = ['name', 'desc']  # xadmin可直接编辑的字段

    pass


xadmin.site.register(Teacher, TeacherAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(City, CityAdmin)
