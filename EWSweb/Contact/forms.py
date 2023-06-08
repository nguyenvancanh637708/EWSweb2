from django import forms
from .models import contactForm


class contactForm(forms.ModelForm):
    class Meta:
        model = contactForm
        fields = ['username', 'phone', 'email', 'body']
# 	username = forms.CharField(max_length=100)
# email= forms.EmailField()
