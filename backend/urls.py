from django.conf.urls import url
from django.urls import path

from . import views

app_name = 'backend'

urlpatterns = [
    url(r'^$', views.HomePageView.as_view(), name='home'),
    url(r'^about/$', views.AboutPageView.as_view(), name='about'),
    url(r'^FAQ/$', views.FAQPageView.as_view(), name='FAQ'),
    path('search/<str:course>/', views.SearchResultView.as_view(), name='search_result'),
    path('search/', views.SearchView, name='search'),
    path('academic/<str:degree>/<str:level>/', views.DegreePageView.as_view(), name='degrees'),
    path('academic/<str:degree>/<str:level>/<str:course>/', views.CoursePageView.as_view(), name='courses'),
    url(r'^contact/$', views.ContactPageView.as_view(), name='contact'),
    url(r'^tour/$', views.TourPageView.as_view(), name='tour'),
    url(r'^gallery/$', views.GalleryPageView.as_view(), name='gallery'),
    path('degree_pathway/<str:type>/', views.DegreePathwayView.as_view(), name='degree_pathway'),
]
