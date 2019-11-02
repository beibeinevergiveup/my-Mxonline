import requests
import json
from django.conf import settings


def send_sinple_sms(apikey, code, mobile):
    url = 'https://sms.yunpian.com/v2/sms/single_send.json'
    text = '【李森宇test】您的验证码是{}。如非本人操作，请忽略本短信'.format(code)

    res = requests.post(url, data={
        'apikey': apikey,
        'mobile': mobile,
        'text': text

    })
    re_json = json.loads(res.text)
    return re_json


if __name__ == '__main__':
    res = send_sinple_sms('0a6af7e63607e9d1aa573cee6228dded', 6666, '15659720810')
    print(res)
