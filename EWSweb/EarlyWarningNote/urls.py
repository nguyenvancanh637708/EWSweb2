from django.urls import path
from . import views
app_name = 'EarlyWarningNote'
urlpatterns = [
    path('', views.EarlyWarningNote, name = 'EarlyWarningNote'),
]