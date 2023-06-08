from django.urls import path
from . import views
app_name = 'MonitoringData'
urlpatterns = [
    path('', views.MonitoringData, name = 'MonitoringData'),
]
