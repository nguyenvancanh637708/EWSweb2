from django.contrib import admin
from .models import TrainingMaterial
from import_export.admin import ImportExportActionModelAdmin
# Register your models here.


@admin.register(TrainingMaterial)
class TrainingAdmin(ImportExportActionModelAdmin):
    list_display = ('DateTime', 'Landsliderisk',
                    'Debrisflowrisk', 'Flashfloodrisk')
