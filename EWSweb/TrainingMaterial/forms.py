from django import forms
from .models import TrainingMaterial
from django.contrib.auth.models import User


class TrainingMaterial (forms.Form):
    class meta:
        model = TrainingMaterial
        fields = '__all__'
