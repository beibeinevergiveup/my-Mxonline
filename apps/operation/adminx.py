import xadmin
from apps.operation.models import UserAsk, UserCourse, UserMessage, CourseComments


class UserAskAdmin(object):
    list_display = ['name', 'mobile', 'course_name']  # xadmin默认显示的字段
    search_fields = ['name', 'course_name']  # xadmin搜索的字段
    list_filter = ['name', 'course_name']  # xadmin过滤器的字段
    pass


class UserCourseAdmin(object):
    list_display = ['user', 'course', 'add_time']  # xadmin默认显示的字段
    search_fields = ['user', 'course']  # xadmin搜索的字段
    list_filter = ['user', 'course', 'add_time']  # xadmin过滤器的字段
    pass


class UserMessageAdmin(object):
    list_display = ['user', 'message', 'has_read', 'add_time']  # xadmin默认显示的字段
    search_fields = ['user', 'message', 'has_read']  # xadmin搜索的字段
    list_filter = ['user', 'message', 'has_read', 'add_time']  # xadmin过滤器的字段
    pass


class CourseCommentsAdmin(object):
    list_display = ['user', 'course', 'comments', 'add_time']  # xadmin默认显示的字段
    search_fields = ['user', 'course', 'comments']  # xadmin搜索的字段
    list_filter = ['user', 'course', 'comments', 'add_time']  # xadmin过滤器的字段
    pass


xadmin.site.register(UserAsk, UserAskAdmin)
xadmin.site.register(UserMessage, UserMessageAdmin)
xadmin.site.register(UserCourse, UserCourseAdmin)
xadmin.site.register(CourseComments, CourseCommentsAdmin)
