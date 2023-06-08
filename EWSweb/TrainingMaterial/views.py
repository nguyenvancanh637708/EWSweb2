from django.shortcuts import render
from typing import Any, Dict
from .models import TrainingMaterial
from .resources import TrainingResources
from tablib import Dataset
from django.views.generic import TemplateView
from django.http import HttpResponse

# Create your Home views here.


def TrainingMaterial(request):
    return render(request, 'TrainingMaterial/TrainingMaterial.html')


def export(request):
    mon_resource = TrainingResources()
    dataset = mon_resource.export()
    response = HttpResponse(
        dataset.xls, content_type='application/vnd.ms-excel')
    response['Content-Disposition'] = 'attachment; filename="monitorings.xls"'
    return response


def simple_upload(request):
    if request.method == 'POST':
        site_resource = TrainingResources()
        dataset = Dataset()
        new_site = request.FILES['myfile']

        imported_data = dataset.load(new_site.read(), format='xlsx')
        # print(imported_data)
        for data in imported_data:
            value = TrainingResources(
                data[0],
                data[1],
                data[2],
                data[3],


            )
        value.save()
    return render(request, 'upload.html')


class MonitoringChartView(TemplateView):
    template_name = 'TrainingMaterial.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["qs"] = TrainingMaterial.objects.all()
        return context
