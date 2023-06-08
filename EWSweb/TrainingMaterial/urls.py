from django.urls import path
from . import views
app_name = 'TrainingMaterial'
urlpatterns = [
    path('', views.TrainingMaterial, name = 'TrainingMaterial'),
]