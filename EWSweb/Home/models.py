from django.db import models

# Create your models here.


class department(models.Model):
    department_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, null=False)

    def __str__(self):
        return f"{self.department_id},{self.name}"

# class post(models.Model):
#     post_id= models.AutoField(primary_key=True)
#     title = models.CharField(max_length=255,null=False)
#     content=models.TextField(null=False)
#     img = models.ImageField(upload_to= 'images',null=True, default=None)
# def __str__(self):
#         return f"{self.post_id},{self.title},{self.content},{self.img}"


class postForm(models.Model):
    title = models.CharField(max_length=255)
    body = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title


class Sites(models.Model):
    Province = models.CharField(max_length=50)
    Distric = models.CharField(max_length=50)
    Commune = models.CharField(max_length=50)
    Risk3h = models.CharField(max_length=50)
    Risk12h = models.CharField(max_length=50)
    Risk24h = models. CharField(max_length=50)
    Risk48h = models.CharField(max_length=50)
