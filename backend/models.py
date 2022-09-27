# Create your models here.
from django.db import models
from django.core.validators import RegexValidator
from django.utils.translation import ugettext_lazy as _
from modelcluster.fields import ParentalKey
from modelcluster.models import ClusterableModel
from wagtail.admin.edit_handlers import MultiFieldPanel, FieldPanel, InlinePanel
from wagtail.core.fields import RichTextField, StreamField
from wagtail.core.models import Page, Orderable
from wagtail.core import blocks
from wagtail.documents.edit_handlers import DocumentChooserPanel
from wagtail.images.models import Image
from wagtail.images.edit_handlers import ImageChooserPanel

from wagtail.snippets.edit_handlers import SnippetChooserPanel
from wagtail.snippets.models import register_snippet


# Struct Blocks for email and phone, So that we can add more than one email and phone for school and campus tables
class Email(blocks.StructBlock):
    email = blocks.EmailBlock(help_text="Enter Email")

    class Meta:
        icon = "mail"
        label = "Email"


class Phone(blocks.StructBlock):
    phone_regex = RegexValidator(regex=r'^09\d{7,9}$',
                                 message="Phone number must be entered in the format: '09123456789'.")
    phone = blocks.CharBlock(help_text="Enter Phone Number", validators=[phone_regex])

    class Meta:
        icon = "fa-phone"
        label = "Phone"


class Gallery(models.Model):
    caption = models.CharField(_("Caption"), max_length=255, )
    photo = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    panels = [MultiFieldPanel(
        [
            FieldPanel("caption"),
            ImageChooserPanel("photo"),
        ], heading="Caption and Photo"
    )]

    class Meta:
        verbose_name = _("Gallery")
        verbose_name_plural = _("Gallery")

    def __str__(self):
        return self.caption

    @property
    def thumbnail_image(self):
        try:
            return self.photo.get_rendition('fill-150x150').img_tag()
        except:  # noqa: E722 FIXME: remove bare 'except:'
            return ''


class Levels(models.Model):
    levelName = models.CharField(_("Level"), max_length=50)

    class Meta:
        verbose_name = _("Level")
        verbose_name_plural = _("Levels")

    def __str__(self):
        return self.levelName


class FAQ(models.Model):
    Question = models.TextField(_("Questions"))
    Answer = RichTextField(_("Answers"))

    class Meta:
        verbose_name = _("FAQ")
        verbose_name_plural = _("FAQs")

    def __str__(self):
        return self.Question


@register_snippet
class Campus(ClusterableModel):
    campusName = models.CharField(_("Campus Name"), max_length=200)
    address = models.TextField(_("Address"))
    query = models.TextField(_("Query for Google Map"))

    class Meta:
        verbose_name = _("Campus")
        verbose_name_plural = _("Campuses")

    def __str__(self):
        return self.campusName


@register_snippet
class Unit(ClusterableModel):
    unitTitle = models.CharField(_("Unit Title"), max_length=100)
    coverPhoto = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='unitImages'
    )
    overview = RichTextField(_("Unit Overview"))

    panels = [MultiFieldPanel(
        [
            FieldPanel("unitTitle"),
            ImageChooserPanel("coverPhoto"),
        ], heading="Unit and Cover Photo"
    ), MultiFieldPanel(
        [
            FieldPanel("overview"),

        ], heading="Overview"
    )]

    class Meta:
        verbose_name = _("Unit")
        verbose_name_plural = _("Units")

    def __str__(self):
        return self.unitTitle


# StreamField is used for mixed data, i.e. Email and Phone
class SchoolInfo(ClusterableModel):
    schoolName = models.CharField(_("School Name"), max_length=100)
    schoolContact = StreamField(
        [
            ("Email", Email()),
            ("Phone", Phone())
        ]
    )
    missions = RichTextField(_("Enter missions"))
    facebookLink = models.URLField(_("Enter Facebook link"))
    linkedinLink = models.URLField(_("Enter Linkedin link"))
    youtubeLink = models.URLField(_("Enter Youtube link"))
    panels = MultiFieldPanel(
        [
            FieldPanel("schoolName"),
        ], heading="School Name"
    ), MultiFieldPanel(
        [
            FieldPanel("schoolContact"),
        ], heading="School Contact"
    ), MultiFieldPanel(
        [
            FieldPanel("missions"),
        ], heading="School Missions"
    ), MultiFieldPanel(
        [
            FieldPanel("facebookLink"),
            FieldPanel("linkedinLink"),
            FieldPanel("youtubeLink"),
        ], heading="Social Media"
    ), MultiFieldPanel(
        [
            InlinePanel("school_campus", min_num=1),
        ], heading="Campus"
    )

    class Meta:
        verbose_name = _("School")
        verbose_name_plural = _("Schools")

    def __str__(self):
        return self.schoolName


@register_snippet
class Academic(ClusterableModel):
    degreeName = models.CharField(_("Degree Name"), max_length=50)
    school = models.ForeignKey(SchoolInfo, related_name='school_Name', on_delete=models.CASCADE, null=True,
                               blank=True, default='')
    panels = [
        MultiFieldPanel(
            [FieldPanel("degreeName")], heading="DegreeName"
        ),
        MultiFieldPanel(
            [
                InlinePanel("academic_course", min_num=1),
            ], heading="Courses"
        ), MultiFieldPanel(
            [
                FieldPanel("school"),
            ], heading="School"
        ),
    ]

    class Meta:
        verbose_name = _("Academic Degree")
        verbose_name_plural = _("Academic Degrees")

    def __str__(self):
        return self.degreeName


@register_snippet
class Course(ClusterableModel):
    courseTitle = models.CharField(_("Course Title"), max_length=100)
    level = models.ForeignKey(Levels, related_name='level_Name', on_delete=models.CASCADE, null=True,
                              blank=True, default='')
    coursePhoto = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='courseImage'
    )
    overview = RichTextField(_("Course Overview"))

    panels = MultiFieldPanel(
        [
            FieldPanel("courseTitle"),
            ImageChooserPanel("coursePhoto"),
        ], heading="Course Title and Cover Photo"
    ), MultiFieldPanel(
        [
            FieldPanel("level"),
        ], heading="Level"
    ), MultiFieldPanel(
        [
            FieldPanel("overview"),
        ], heading="Course Overview"
    ), MultiFieldPanel(
        [
            InlinePanel("course_unit"),
        ], heading="Units inside the course"
    ), MultiFieldPanel(
        [
            InlinePanel("course_documents"),
        ], heading="Documents"
    )

    class Meta:
        verbose_name = _("Course")
        verbose_name_plural = _("Courses")

    def __str__(self):
        return self.courseTitle


class SchoolCampusRelation(Orderable):
    schoolName = ParentalKey("backend.SchoolInfo", on_delete=models.CASCADE, related_name="school_campus")
    campusName = models.ForeignKey("backend.Campus", on_delete=models.CASCADE)
    panels = [
        SnippetChooserPanel("campusName")
    ]


class AcademicCourseRelation(Orderable):
    degreeName = ParentalKey("backend.Academic", on_delete=models.CASCADE, related_name="academic_course")
    courseName = models.ForeignKey("backend.Course", on_delete=models.CASCADE, related_name="courses")
    panels = [
        SnippetChooserPanel("courseName")
    ]


class CourseUnitRelation(Orderable):
    courseName = ParentalKey("backend.Course", on_delete=models.CASCADE, related_name="course_unit")
    Unit_Title = models.ForeignKey("backend.Unit", on_delete=models.CASCADE)
    panels = [
        SnippetChooserPanel("Unit_Title")
    ]


class CourseDocumentRelation(Orderable):
    courseName = ParentalKey(Course, on_delete=models.CASCADE, related_name='course_documents')
    document = models.ForeignKey(
        'wagtaildocs.Document', on_delete=models.CASCADE, related_name='+'
    )

    panels = [
        DocumentChooserPanel('document'),
    ]
