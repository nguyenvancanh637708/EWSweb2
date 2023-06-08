from django.shortcuts import render
from .models import employees as employee_model
import pandas as pd
from django.core.files.storage import FileSystemStorage
from .models import Sites
from tablib import Dataset
from .resources import SitesResource


# Create your views here.


def get_employees(request):
    return render(request, 'employees.html')
