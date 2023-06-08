from django.contrib import admin
from .models import department
from .models import postForm
from import_export.admin import ImportExportActionModelAdmin
from .models import Sites
# from .models import post
# Register your models here.


# class DepartmentAdmin(admin.ModelAdmin):
#     list_display = ('department_id', 'name')
#     search_fields = ['name']
#     list_filter = ('department_id', 'name')


# admin.site.register(department, DepartmentAdmin)

# class PostAdmin(admin.ModelAdmin):
#     list_display = ('post_id','title','content','img')
#     search_fields = ['content']
#     list_filter = ('post_id','title','content','img')
# admin.site.register(post,PostAdmin)

# Trang bai viet

admin.site.register(postForm)


@admin.register(Sites)
class SitesAdmin(ImportExportActionModelAdmin):
    list_display = ('Province', 'Distric', 'Commune',
                    'Risk3h', 'Risk12h', 'Risk24h', 'Risk48h')
