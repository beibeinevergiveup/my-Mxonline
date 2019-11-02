import xadmin
from apps.course.models import Course, Lesson, CourseResource, Video


class GlobalSetting(object):
    site_title = "贝贝学习网后台系统"  # 设置标题
    site_footer = "贝贝无限集团"  # 设置脚标
    pass


class BaseSetting(object):
    enable_themes = True  # 使用主题
    use_bootswatch = True  # 使用bootwatch 主题样式
    pass


class CourseAdmin(object):
    # verbose_name = '课程管理'
    list_display = ['name', 'desc', 'detail', 'degree', 'learn_time', 'students']  # xadmin默认显示的字段
    search_fields = ['name', 'desc', 'detail', 'degree', 'students']  # xadmin搜索的字段
    list_filter = ['name', 'desc', 'teacher__name', 'detail', 'degree', 'learn_time', 'students']  # xadmin过滤器的字段
    list_editable = ['degree', 'desc']
    pass


class LessonAdmin(object):
    list_display = ['course', 'name', 'add_time']  # xadmin默认显示的字段
    search_fields = ['course', 'name']  # xadmin搜索的字段
    list_filter = ['course', 'name', 'add_time']
    pass


class CourseResourceAdmin(object):
    list_display = ['course', 'name', 'file', 'add_time']  # xadmin默认显示的字段
    search_fields = ['course', 'name', 'file']  # xadmin搜索的字段
    list_filter = ['course', 'name', 'file', 'add_time']
    pass


class VideoAdmin(object):
    list_display = ['lesson', 'name', 'add_time']  # xadmin默认显示的字段
    search_fields = ['lesson', 'name', ]  # xadmin搜索的字段
    list_filter = ['lesson', 'name', 'add_time']
    pass


xadmin.site.register(Lesson, LessonAdmin)
xadmin.site.register(Course, CourseAdmin)
xadmin.site.register(Video, VideoAdmin)
xadmin.site.register(CourseResource, CourseResourceAdmin)
xadmin.site.register(xadmin.views.CommAdminView, GlobalSetting)
xadmin.site.register(xadmin.views.BaseAdminView, BaseSetting)
