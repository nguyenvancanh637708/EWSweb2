from django.urls import path
from editors.views import EditorChartView
app_name = 'editors'
urlpatterns = [
    path('', EditorChartView.as_view(), name='index'),
]
