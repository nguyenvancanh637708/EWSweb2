from django.shortcuts import render
from django.http import HttpResponse
from .forms import UploadMulti
from .models import formUpload
from django.views.generic.edit import FormView

class index(FormView):
	def get (self, request):
		form = UploadMulti
		return render(request, 'Upload/Upload.html', {'form': form})
	def post(self, request):
		form_class = UploadMulti
		form = self.get_form(form_class)
		files = request.FILES.getlist('image')
		if form.is_valid():
			for f in files:
				instance = formUpload(image=f)
				instance.save()
		return HttpResponse('Bạn đã gửi thông tin cảnh báo thành công, thông tin này sẽ được cán bộ xử lý ngay lập tức!')

