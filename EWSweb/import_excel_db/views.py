from django.shortcuts import render
from .models import Sites
from .resources import SitesResources
from django.contrib import messages
from tablib import Dataset
from django.http import HttpResponse

# Create your views here.


def export(request):
    site_resource = SitesResources()
    dataset = site_resource.export()
    response = HttpResponse(
        dataset.xls, content_type='application/vnd.ms-excel')
    response['Content-Disposition'] = 'attachment; filename="sites.xls"'
    return response


def simple_upload(request):
    if request.method == 'POST':
        site_resource = SitesResources()
        dataset = Dataset()
        new_site = request.FILES['myfile']

        imported_data = dataset.load(new_site.read(), format='xlsx')
        # print(imported_data)
        for data in imported_data:
            value = Sites(
                data[0],
                data[1],
                data[2],
                data[3],
                data[4],
                data[5],
                data[6],
                data[7],
            )
        value.save()
    return render(request, 'upload.html')
