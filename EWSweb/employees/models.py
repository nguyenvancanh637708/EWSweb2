from django.db import models
from Home.models import department

# Create your models here.


class employees(models.Model):
    employee_id = models.AutoField(primary_key=True)
    department_id = models.ForeignKey(
        department, default=None, on_delete=models.CASCADE)

    nameT = models.CharField(max_length=100, null=False)
    nameH = models.CharField(max_length=100, null=False)
    nameX = models.CharField(max_length=100, null=False)
    nameMax = models.CharField(max_length=100, null=False)
    nameMin = models.CharField(max_length=100, null=False)
    nameTB = models.CharField(max_length=100, null=False)
    name1 = models.CharField(max_length=100, null=False)
    name2 = models.CharField(max_length=100, null=False)

    def __str__(self):
        return f"{self.employee_id},{self.department_id},{self.nameT},{self.nameH},{self.nameX},{self.nameMax},{self.nameTB},{self.nameMin},{self.name1},{self.name2}"


class Sites(models.Model):
    Province = models.CharField(max_length=50)
    Distri = models.CharField(max_length=50)
    Commune = models.CharField(max_length=50)
    Risk3h = models.CharField(max_length=50)
    Risk12h = models.CharField(max_length=50)
    Risk24h = models. CharField(max_length=50)
    Risk48h = models.CharField(max_length=50)

    def __str__(self):
        return self.Province, self.Distri, self.Commune, self.Risk3h, self.Risk12h, self.Risk24h, self.Risk48h,
