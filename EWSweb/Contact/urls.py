from django.urls import path
from . import views
app_name = 'Contact'

urlpatterns = [
    path('', views.Contact, name = 'Contact'),
    path('getContact/', views.getContact, name="getContact"),
]


