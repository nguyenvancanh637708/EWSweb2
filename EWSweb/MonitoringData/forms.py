from django import forms
from .models import Monitoring
from django.contrib.auth.models import User


class Monitoring(forms.Form):
    class meta:
        model = Monitoring
        fields = '__all__'
