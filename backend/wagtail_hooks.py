from wagtail.core import hooks

from wagtail.contrib.modeladmin.options import ModelAdmin, modeladmin_register

from .models import Gallery, Campus, SchoolInfo, Levels, Course, Unit, Academic, FAQ


class GalleryAdmin(ModelAdmin):
    model = Gallery
    menu_label = "Gallery"
    menu_icon = "fa-picture-o"
    add_to_settings_menu = False
    exclude_from_explorer = False
    list_display = ("caption", "thumbnail_image")


modeladmin_register(GalleryAdmin)


class CampusAdmin(ModelAdmin):
    model = Campus
    menu_label = "Campus"
    menu_icon = "fa-building-o"
    add_to_settings_menu = False
    exclude_from_explorer = False
    list_display = ("campusName", "address")
    search_fields = ("campusName",)


modeladmin_register(CampusAdmin)


class SchoolAdmin(ModelAdmin):
    model = SchoolInfo
    menu_icon = "fa-university"
    add_to_settings_menu = False
    exclude_from_explorer = False
    list_display = ("schoolName",)
    search_fields = ("schoolName",)


modeladmin_register(SchoolAdmin)


class AcademicAdmin(ModelAdmin):
    model = Academic
    menu_icon = "fa-graduation-cap"
    add_to_settings_menu = False
    exclude_from_explorer = False
    list_display = ["degreeName", "school", ]
    search_fields = ("degreeName", "school__schoolName")


modeladmin_register(AcademicAdmin)


class LevelsAdmin(ModelAdmin):
    model = Levels
    menu_icon = "fa-cubes"
    add_to_settings_menu = False
    exclude_from_explorer = False
    list_display = ("levelName",)


modeladmin_register(LevelsAdmin)


class CourseAdmin(ModelAdmin):
    model = Course
    menu_icon = "fa-book"
    search_fields = ("courseTitle",)
    list_display = ("courseTitle", "level",)
    add_to_settings_menu = False
    exclude_from_explorer = False


modeladmin_register(CourseAdmin)


class UnitAdmin(ModelAdmin):
    model = Unit
    menu_icon = "fa-list-ol"
    search_fields = ("unitTitle",)
    list_display = ("unitTitle",)
    add_to_settings_menu = False
    exclude_from_explorer = False


modeladmin_register(UnitAdmin)


class FAQAdmin(ModelAdmin):
    model = FAQ
    menu_icon = "fa-question-circle"
    add_to_settings_menu = False
    exclude_from_explorer = False
    list_display = ("Question", "Answer")


modeladmin_register(FAQAdmin)


# ---------------------------------------------------------------------------------------------------------------------
# hide unnecessary menu items

@hooks.register('construct_main_menu')
def hide_snippets_menu_item(request, menu_items):
    menu_items[:] = [item for item in menu_items if item.name != 'snippets']

# @hooks.register('construct_reports_menu')
# def hide_user_menu_item(request, menu_items):
#     menu_items[:] = [item for item in menu_items if item.name != 'locked_pages']
#
#
# @hooks.register('construct_settings_menu')
# def hide_user_menu_item(request, menu_items):
#     menu_items[:] = [item for item in menu_items if item.name != 'workflows' and item.name != 'collections']


# ---------------------------------------------------------------------------------------------------------------------
# add items in admin dashboard
# class SchoolSummaryItem(SummaryItem):
#     """The segment summary panel showing the total amount of segments on the
#     site and allowing quick access to the Segment dashboard.
#     """
#
#     order = 2000
#
#     def render(self):
#         school_count = models.SchoolInfo.objects.count()
#         target_url = reverse("wagtailcore_login")
#         title = _("Segments")
#         return mark_safe(
#             """
#             <li class="icon icon-fa-snowflake-o">
#                 <a href="{}"><span>{}</span>{}</a>
#             </li>""".format(
#                 target_url, school_count, title
#             )
#         )
#
#
# @hooks.register('construct_homepage_summary_items')
# # def add_items(request, panels):
# def add_my_summary_items(request, items):
#     items.append(SchoolSummaryItem(request))
