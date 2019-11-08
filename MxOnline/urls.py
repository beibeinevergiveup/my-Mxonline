from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include
from django.views.generic import TemplateView
from apps.users.views import LoginView, LogoutView, SendSmsView, DynamicLoginView, RegisterView
from django.views.decorators.csrf import csrf_exempt
from django.views.static import serve
from MxOnline.settings import MEDIA_ROOT
import xadmin

urlpatterns = [
    path('admin/', admin.site.urls),
    path('xadmin/', xadmin.site.urls),
    path('', TemplateView.as_view(template_name='index.html'), name='index'),
    path('login/', LoginView.as_view(), name='login'),
    path('logout/', LogoutView.as_view(), name='logout'),
    path('d_login/', DynamicLoginView.as_view(), name='d_login'),
    path("register/", RegisterView.as_view(), name='register'),
    url(r'^captcha/', include('captcha.urls')),
    url(r'^send_sms/', csrf_exempt(SendSmsView.as_view()), name='send_sms'),
    url(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT}),
    #  机构相关页面
    url(r'^org/', include(('apps.organization.urls', 'organization'), namespace='org')),
    url(r'^op/', include(('apps.operation.urls', 'operation'), namespace='op')),

]
