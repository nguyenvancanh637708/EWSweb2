from django.urls import path
from . import views
from django.contrib.auth.views import LogoutView

app_name = 'Home'
urlpatterns = [
    path('', views.index, name="Home"),
    path('<int:id>/', views.postDetail, name='postDetail'),
    path('register/', views.register, name='register'),
    path('logout/', LogoutView.as_view, {'next_page': '/'}, name='logout')

]
