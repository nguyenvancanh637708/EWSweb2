from django.contrib import admin
from import_export.admin import ImportExportActionModelAdmin
from .models import Sites
# Register your models here.


@admin.register(Sites)
class SitesAdmin(ImportExportActionModelAdmin):
    list_display = ('Province', 'Distric', 'Commune',
                    'Risk3h', 'Risk12h', 'Risk24h', 'Risk48h')
