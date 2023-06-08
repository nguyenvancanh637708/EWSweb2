from django.db import models

# Create your models here.


class Sites(models.Model):
    Province = models.CharField(max_length=50)
    Distric = models.CharField(max_length=50)
    Commune = models.CharField(max_length=50)
    Risk3h = models.CharField(max_length=50)
    Risk12h = models.CharField(max_length=50)
    Risk24h = models. CharField(max_length=50)
    Risk48h = models.CharField(max_length=50)
