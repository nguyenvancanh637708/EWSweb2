from import_export import resources
from .models import Sites


class SitesResources(resources.ModelResource):
    class meta:
        model = Sites
