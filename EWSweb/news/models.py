from django.db import models
from Home.models import post
# Create your models here.
class news(models.Model):
    new_id = models.AutoField(primary_key=True)
    post_id = models.ForeignKey(post,default=None,on_delete=models.CASCADE)
    title = models.CharField(max_length=255,null=False)

    def __str__(self):
        return f"{self.new_id}, {self.post_id},{self.title}"