from django.urls import path
from .import views
app_name = 'Login'

# Create your views here
urlpatterns = [
    path('', views.sign_in, name='Login'),

    path('login', views.sign_in, name='login ')

]
