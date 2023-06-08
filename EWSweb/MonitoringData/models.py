from django.db import models

# Create your models here.


class Monitoring (models.Model):
    Date = models.DateTimeField(null=False)
    Temperature = models.CharField(max_length=30, null=False)
    Digitalsignal = models.CharField(max_length=30, null=False)
    Highestvalue = models.CharField(max_length=30, null=False)
    Oscillatingpeak = models.CharField(max_length=30, null=False)

    def __str__(self):
        return "self.Temperature"
