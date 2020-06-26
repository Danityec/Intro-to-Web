from django.db import models

# Create your models here.
class Projects(models.Model):
    FullName = models.CharField(max_length=70)
    EmailAddress = models.CharField(max_length=200)
    Subject = models.CharField(max_length=50)
    Message = models.CharField(max_length=300)