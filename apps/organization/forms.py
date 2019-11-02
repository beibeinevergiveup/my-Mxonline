import re
from django import forms
from apps.operation.models import UserAsk


class AddAskForm(forms.ModelForm):
    mobile = forms.CharField(max_length=11, min_length=11, required=True)

    class Meta:
        model = UserAsk  # 指明调用的model
        fields = ['name', 'mobile', 'course_name'] #设定调用model需要过滤的字段

    def clean_mobile(self):
        """验证手机号是否合法"""

        mobile = self.cleaned_data['mobile']
        regex_mobile = '^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$'
        p = re.compile(regex_mobile)
        if p.match(mobile):
            return mobile
        else:
            raise forms.ValidationError("手机号非法", code="mobile_invalid")
