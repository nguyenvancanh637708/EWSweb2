from import_export import resources
from .models import Monitoring


class MonitoringResources(resources.ModelResource):
    class meta:
        model = Monitoring
