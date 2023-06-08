
from django.urls import path
from .import views
app_name = 'Upload'

urlpatterns = [
    path('', views.index.as_view(), name = 'Upload'),
    
]