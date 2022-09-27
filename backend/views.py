from django.core import serializers
from django.shortcuts import render

# Create your views here.
from django.views.generic import TemplateView
from wagtail.documents.models import Document
from backend.models import Gallery, Campus, Course, Levels, FAQ


class HomePageView(TemplateView):
    template_name = "index.html"


class AboutPageView(TemplateView):
    template_name = "about.html"

    def get_context_data(self, *args, **kwargs):
        context = super(AboutPageView, self).get_context_data(**kwargs)
        context['data'] = Gallery.objects.all().order_by('-id')[:4]
        return context


class ContactPageView(TemplateView):
    template_name = "contacts.html"

    def get_context_data(self, **kwargs):
        context = super(ContactPageView, self).get_context_data(**kwargs)
        context['campus'] = Campus.objects.all()
        return context


class TourPageView(TemplateView):
    template_name = "tour.html"


class GalleryPageView(TemplateView):
    template_name = "gallery.html"

    def get_context_data(self, *args, **kwargs):
        context = super(GalleryPageView, self).get_context_data(**kwargs)
        context['data'] = Gallery.objects.all()
        return context


class DegreePageView(TemplateView):
    template_name = "diploma.html"

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)
        degree = self.kwargs['degree']
        level = self.kwargs['level']
        context['degree'] = degree
        context['level'] = level
        level_id = Levels.objects.get(levelName=level).id
        context['courses'] = Course.objects.filter(level=level_id)
        return context


class CoursePageView(TemplateView):
    template_name = "course_list.html"

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)
        degree = self.kwargs['degree']
        level = self.kwargs['level']
        course = self.kwargs['course']
        context['degree'] = degree
        context['level'] = level
        context['course'] = course
        context['courseDetail'] = Course.objects.get(courseTitle=course)
        doc_id = context['courseDetail'].course_documents.values('document_id')
        context['courseDocs'] = Document.objects.filter(id__in=doc_id)
        return context


def SearchView(request):
    search_text = request.GET['search_text']
    if search_text:
        courses = Course.objects.filter(courseTitle__icontains=search_text) | Course.objects.filter(
            overview__iexact=search_text)
        return render(request, 'search.html', {'courses': courses})


class DegreePathwayView(TemplateView):
    template_name = "degree_pathway.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        level_type = self.kwargs['type']
        context['levels'] = Levels.objects.all().order_by('levelName')
        if level_type == 'all':
            context['courses'] = Course.objects.all().order_by('level')
        else:
            level_id = Levels.objects.get(levelName=level_type).id
            context['course'] = Course.objects.filter(level=level_id)
            course_json = serializers.serialize('json', context['course'])

            return course_json
        return context

    # def get(self, request, *args, **kwargs):
    #     self.object = self.get_object()
    #     data = self.get_context_data(object=self.object)
    #     if self.request.GET:
    #         data__ = JsonForm(request.GET)
    #         if data__.is_valid():
    #             json = data__.cleaned_data['json']
    #             if json == 'true':
    #                 return JsonResponse({'data': data})
    #     return self.render_to_response(data)


class SearchResultView(TemplateView):
    template_name = "searched_course.html"

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)
        course = self.kwargs['course']
        context['courseDetail'] = Course.objects.get(courseTitle=course)

        return context


class FAQPageView(TemplateView):
    template_name = "faq.html"

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)
        context['faq'] = FAQ.objects.all()

        return context
