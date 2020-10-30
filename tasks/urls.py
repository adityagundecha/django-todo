from django.urls import path, include
from django.views.generic import TemplateView

from . import views

urlpatterns = [
    path('', TemplateView.as_view(template_name="tasks/index.html")),
    path('accounts/', include('allauth.urls')),
    path('list/', views.index, name='list'),
    path('update_task/<str:pk>/', views.update_task, name="update_task"),
    path('delete_task/<str:pk>/', views.delete_task, name="delete"),
]