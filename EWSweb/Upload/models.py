from django.db import models

# Create your models here.


class formUpload(models.Model):
    local = models.CharField(max_length=25)
    hazard = models.CharField(max_length=11)
    discribe = models.CharField(max_length=30)
    image = models.FileField(upload_to='Media/')

    def __str__(self):
        return self.local, self.image
