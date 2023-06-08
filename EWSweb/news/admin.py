from django.contrib import admin
from .models import news

# Register your models here.
class NewAdmin(admin.ModelAdmin):
    list_display = ('new_id','post_id','title')
    search_fields = ['content']
    list_filter = ('new_id','post_id','title','')
admin.site.register(news,NewAdmin)