from django.db import models
from apps.users.models import BaseModel
from apps.organization.models import Teacher, CourseOrg


# Create your models here.
class Course(BaseModel):
    teacher = models.ForeignKey(Teacher, verbose_name='讲师', on_delete=models.CASCADE)
    course_org = models.ForeignKey(CourseOrg, null=True, blank=True, verbose_name="课程机构", on_delete=models.CASCADE)
    name = models.CharField(max_length=50, verbose_name='课程名 ')
    desc = models.CharField(verbose_name='课程描述', max_length=300)
    learn_time = models.IntegerField(verbose_name='课程时长', default=0)
    degree = models.CharField(verbose_name='难度', choices=(('cj', '初级'), ('zj', '中级'), ('gj', '高级')), max_length=2)
    students = models.IntegerField(default=0, verbose_name='学习人数')
    fav_nums = models.IntegerField(default=0, verbose_name='收藏人数')
    click_nums = models.IntegerField(default=0, verbose_name='点击数')
    category = models.CharField(default=u'后端开发', max_length=10, verbose_name=u'分类')
    #  u后面字符串以 Unicode 格式 进行编码，一般用在中文字符串前面，防止因为源码储存格式问题，导致再次使用时出现乱码
    tag = models.CharField(default='', verbose_name='课程标签', max_length=10)
    youneed_know = models.CharField(default='', verbose_name='课程须知', max_length=300)
    teacher_tell = models.CharField(default='', verbose_name='老师告诉你', max_length=300)
    is_classics = models.BooleanField(default=False, verbose_name="是否经典课程")
    detail = models.TextField(verbose_name='课程详情')
    image = models.ImageField(upload_to="courses/%Y/%m", verbose_name='封面图', max_length=100)

    class Meta:
        verbose_name = '课程信息'
        verbose_name_plural = verbose_name


class Lesson(BaseModel):
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name='课程')
    name = models.CharField(max_length=100, verbose_name=u'章节名')
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长(分钟数)')

    class Meta:
        verbose_name = '课程章节'
        verbose_name_plural = verbose_name


class Video(BaseModel):
    lesson = models.ForeignKey(Lesson, verbose_name='章节', on_delete=models.CASCADE)
    name = models.CharField(max_length=100, verbose_name=u'视频名')
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长(分钟数)')

    class Meta:
        verbose_name = '视频'
        verbose_name_plural = verbose_name


class CourseResource(BaseModel):
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name='课程')
    name = models.CharField(max_length=100, verbose_name=u'名称')
    file = models.FileField(upload_to="course/resource/%Y/m", verbose_name='下载地址', max_length=200)

    class Meta:
        verbose_name = '课程资源'
        verbose_name_plural = verbose_name
