from django.db import models


class contactForm(models.Model):
    username = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.CharField(max_length=10, null=True)
    body = models.TextField()
    # avatar = models.ImageField(upload_to='images',null=False, default=None)

    def __str__(self):
        return self.username
