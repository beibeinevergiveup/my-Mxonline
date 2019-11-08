from django.conf.urls import url
from django.urls import path
from apps.course.views import *

urlpatterns = [
    url(r'^list/$', CourseListView.as_view(), name="list"),
    # url(r"~(?P<course_id>\d+)/$",)

  #  url(r'^')
]
