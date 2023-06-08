from django.shortcuts import render
from .models import Monitoring
from .resources import MonitoringResources
from tablib import Dataset
from django.views.generic import TemplateView
from django.http import HttpResponse

# Create your Home views here.


def MonitoringData(request):
    return render(request, 'MonitoringData/MonitoringData.html')


def export(request):
    mon_resource = MonitoringResources()
    dataset = mon_resource.export()
    response = HttpResponse(
        dataset.xls, content_type='application/vnd.ms-excel')
    response['Content-Disposition'] = 'attachment; filename="monitorings.xls"'
    return response


def simple_upload(request):
    if request.method == 'POST':
        site_resource = MonitoringResources()
        dataset = Dataset()
        new_site = request.FILES['myfile']

        imported_data = dataset.load(new_site.read(), format='xlsx')
        # print(imported_data)
        for data in imported_data:
            value = MonitoringResources(
                data[0],
                data[1],
                data[2],
                data[3],
                data[4],

            )
        value.save()
    return render(request, 'upload.html')


class MonitoringChartView(TemplateView):
    template_name = 'MonitoringData.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["qs"] = Monitoring.objects.all()
        return context

# https://api.openweathermap.org/data/2.5/onecall?lat={22.338703}&lon={103.848252}&exclude={hourly}&appid={c797b4f25f10e0d6466d9c626c623120}
