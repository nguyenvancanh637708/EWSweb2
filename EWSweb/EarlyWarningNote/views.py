from django.shortcuts import render
from django.http import HttpResponse

# Create your Home views here.
def EarlyWarningNote(request):
	return render(request, 'EarlyWarningNote/EarlyWarningNote.html')

