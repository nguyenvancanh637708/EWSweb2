from django.shortcuts import render
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from .models import postForm
import pandas as pd
from .models import Sites
from .resources import SitesResources
from django.contrib import messages
from tablib import Dataset
from .models import Sites as Sites_model
from django.contrib.auth import login, authenticate
from django.shortcuts import render, redirect
from .forms import RegistrationForm
from django.contrib.auth.models import User


# Create your Home views here.
# def get_home(request):
#     post_list = post_model.objects.filter().order_by('post_id')
#     return render(request, 'index.html', {'post_list': post_list})


# def index(request):
#     pF = postForm.objects.all()
#     return render(request, 'Home/index.html', {'pF': pF})


def postDetail(request, id):
    pD = postForm.objects.get(id=id)
    return render(request, 'Home/postDetail.html', {'pD': pD})


def export(request):
    site_resource = SitesResources()
    dataset = site_resource.export()
    response = HttpResponse(
        dataset.xls, content_type='application/vnd.ms-excel')
    response['Content-Disposition'] = 'attachment; filename="sites.xls"'
    return response


def index(request):
    sM = Sites_model.objects.filter()
    pF = postForm.objects.all().order_by("-created_at")
    return render(request, 'Home/index.html', {'sM': sM, 'pF': pF})


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


def register(request):
    form = RegistrationForm()
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/')
    return render(request, 'Home/register.html', {'form': form})
