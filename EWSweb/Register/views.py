from django.shortcuts import render
# from django.views import View
from django.http import HttpResponse
# from django.http import HttpResponseRedirect
from .forms import Registerform
# from .models import Registermodel
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login


# Create your views here.
def Register(request):
    context = {'RF': Registerform}
    return render(request, 'Register/Register.html', context)


def getRegister(request):
    if request.method == "POST":
        RF = Registerform(request.POST)
        if RF.is_valid():
            saveRF = User.objects.create(
                username=RF.cleaned_data['username'],
                email=RF.cleaned_data['email'],
                password=RF.cleaned_data['password'])
            saveRF.set_password(RF.cleaned_data['password'])
            saveRF.save()
            return HttpResponse('Đăng kí thành công')
        else:
            return HttpResponse('Đăng kí không thành công')
