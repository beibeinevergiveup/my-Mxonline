from django import forms
from captcha.fields import CaptchaField
from MxOnline.settings import REDIS_PORT, REDIS_HOST
from apps.users.models import UserProfile
import redis


class LoginForm(forms.Form):
    username = forms.CharField(required=True, min_length=3)
    password = forms.CharField(required=True, min_length=2)


class RegisterPostForm(forms.Form):
    mobile = forms.CharField(required=True, min_length=11, max_length=11)
    code = forms.CharField(required=True, min_length=4, max_length=4)
    password = forms.CharField(required=True)

    def clean_mobile(self):
        mobile = self.data.get('mobile')
        users = UserProfile.objects.filter(mobile=mobile)
        if users:
            raise forms.ValidationError('该手机号已注册')
        return mobile

    def clean_code(self):
        mobile = self.data.get('mobile')
        code = self.data.gert('code')
        r = redis.Redis(host=REDIS_HOST, port=REDIS_PORT, db=0, charset='utf8', decode_responses=True)
        # db=0 代表使用一号数据库  decode_response  True代表字符串输出  False 代表字节输出
        redis_code = r.get(str(mobile))
        if code != redis_code:
            raise forms.ValidationError('验证码不正确')
        return code



class RegisterGetForm(forms.Form):
    captcha = CaptchaField()


class DynamicLoginForm(forms.Form):
    captcha = CaptchaField()
    mobile = forms.CharField(required=True, min_length=11, max_length=11)


class DynamicLoginPostForm(forms.Form):
    mobile = forms.CharField(required=True, min_length=11, max_length=11)
    code = forms.CharField(required=True, min_length=4, max_length=4)

    def clean_code(self):
        mobile = self.data.get('mobile')  # 获取传输来的数据
        code = self.data.get('code')
        r = redis.Redis(host=REDIS_HOST, port=REDIS_PORT, db=0, charset='utf8', decode_responses=True)
        redis_code = r.get(str(mobile))
        if code != redis_code:
            raise forms.ValidationError('验证码错误')
        return self.cleaned_data
