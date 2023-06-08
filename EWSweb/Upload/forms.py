from django import forms

class UploadMulti(forms.Form):
	local = forms.CharField(max_length = 25)
	hazard = forms.CharField(max_length = 11)
	discribe = forms.CharField(max_length = 30)
	image = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}))
	

 