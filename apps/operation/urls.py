from django.conf.urls import url
from django.urls import path
from apps.operation.views import *

urlpatterns = [
    url(r'^fav/$', AddFavView.as_view(), name="fav"),

  #  url(r'^')
]
