from django import forms
from .models import Registermodel

class Registerform(forms.ModelForm):
	class Meta:
		model = Registermodel
		fields = ['username', 'email', 'company', 'phonenumber', 'password', 'address']

