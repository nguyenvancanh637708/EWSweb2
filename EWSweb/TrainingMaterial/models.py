from django.db import models

# Create your models here.


class TrainingMaterial(models.Model):
    DateTime = models.DateTimeField(null=False)
    Landsliderisk = models.CharField(max_length=30, null=False)
    Debrisflowrisk = models.CharField(max_length=30, null=False)
    Flashfloodrisk = models.CharField(max_length=30, null=False)

    def __str__(self):
        return "self.Landsliderisk"
