from django.shortcuts import render
from django.views.generic import View
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponseRedirect, JsonResponse
from django.urls import reverse
from apps.users.form import LoginForm, DynamicLoginForm, DynamicLoginPostForm, RegisterGetForm, RegisterPostForm

from apps.utils.random import generate_random
from apps.utils.YunPan import send_sinple_sms
from MxOnline.settings import API_KEY
import redis
from MxOnline.settings import REDIS_HOST, REDIS_PORT
from apps.users.models import UserProfile


# 注册模块
class RegisterView(View):
    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            return HttpResponseRedirect(reverse('index'))
        register_get_form = RegisterGetForm()

        return render(request, 'register.html', {
            'register_get_form': register_get_form,

        })

    def post(self, request, *args, **kwargs):
        register_post_form = RegisterPostForm(request.POST)
        if register_post_form.is_valid():
            mobile = register_post_form.cleaned_data["mobile"]
            password = register_post_form.cleaned_data["password"]
            user = UserProfile(username=mobile)
            user.set_password(password)
            user.save()
            login(request, user)
            return HttpResponseRedirect(reverse('index'))
        else:
            register_get_form = RegisterGetForm()
            return render(request, "register.html", {
                "register_get_form": register_get_form,
                "register_post_form": register_post_form
            })


class DynamicLoginView(View):
    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            return HttpResponseRedirect(reverse('index'))
        login_form = DynamicLoginForm()
        return render(request, 'login.html', {
            'login_form': login_form
        })

    def post(self, request, *args, **kwargs):
        login_form = DynamicLoginPostForm(request.POST)
        dynamic_login = True
        if login_form.is_valid():
            # 没有账号依然可以继续登入
            mobile = login_form.cleaned_data['mobile']
            existed_user = UserProfile.objects.filter()
            if existed_user:
                user = existed_user[0]
            else:
                user = UserProfile(username=mobile)
                password = generate_random(10, 2)
                user.set_password(password)
                user.mobile = mobile
                user.save()
            login(request, user)
            # next = request.GET.get("next", "")
            return HttpResponseRedirect(reverse('index'))

        else:
            d_form = DynamicLoginForm()
            return render(request, "login.html", {
                "login_form1": login_form,
                "d_form": d_form,
                "dynamic_login": dynamic_login
            })


class LogoutView(View):
    def get(self, request, *args, **kwargs):
        logout(request)
        return HttpResponseRedirect(reverse('index'))


class SendSmsView(View):
    def post(self, request, *args, **kwargs):
        send_sms_form = DynamicLoginForm(request.POST)
        re_dict = {}
        if send_sms_form.is_valid():
            mobile = send_sms_form.cleaned_data['mobile']
            code = generate_random(4, 0)
            re_json = send_sinple_sms(API_KEY, code, mobile)
            if re_json['code'] == 0:
                re_dict['status'] = 'success'
                r = redis.Redis(host=REDIS_HOST, port=REDIS_PORT, db=0, charset='utf8', decode_responses=True)
                r.set(str(mobile), code)
                r.expire(str(mobile), 60 * 5)

            else:
                re_dict['msg'] = re_json['msg']
        else:
            for key, val in send_sms_form.errors.items():
                re_dict[key] = val[0]
        return JsonResponse(re_dict)


class LoginView(View):
    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            return HttpResponseRedirect(reverse('index'))
        login_form = DynamicLoginForm()
        return render(request, 'login.html', {
            'login_form': login_form
        })

    def post(self, request, *args, **kwargs):
        Login_Form = LoginForm(request.POST)
        if Login_Form.is_valid():
            username = Login_Form.cleaned_data['username']
            password = Login_Form.cleaned_data['password']
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                return HttpResponseRedirect(reverse('index'))
            else:
                return render(request, 'login.html', {"msg": "账户或者密码错误"})
        else:
            return render(request, 'login.html', {"login_form": Login_Form})
