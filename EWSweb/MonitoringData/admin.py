from django.contrib import admin
from .models import Monitoring
from import_export.admin import ImportExportActionModelAdmin
# Register your models here.


@admin.register(Monitoring)
class MonitoringAdmin(ImportExportActionModelAdmin):
    list_display = ('Date', 'Temperature', 'Digitalsignal',
                    'Highestvalue', 'Oscillatingpeak')
