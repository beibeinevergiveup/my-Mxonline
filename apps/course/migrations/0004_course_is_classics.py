# Generated by Django 2.2 on 2019-10-30 14:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('course', '0003_course_course_org'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='is_classics',
            field=models.BooleanField(default=False, verbose_name='是否经典课程'),
        ),
    ]
