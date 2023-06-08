from django.db import models

# Create your models here.
class Registermodel(models.Model):
	username = models.CharField(max_length = 25)
	email = models.EmailField()
	company = models.CharField(max_length = 25)
	phonenumber = models.CharField(max_length = 11)
	password = models.CharField(max_length = 13)
	address = models.CharField(max_length = 50)

	def __str__(self):
		return self.username
