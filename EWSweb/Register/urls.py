from django.urls import path
from . import views
app_name = 'Register'

# Create your views here
urlpatterns = [
    path('', views.Register, name = 'Register'),
    path('getRegister/', views.getRegister, name = 'getRegister'),
]