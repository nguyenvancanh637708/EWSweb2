from import_export import resources
from .models import TrainingMaterial


class TrainingResources(resources.ModelResource):
    class meta:
        model = TrainingMaterial
