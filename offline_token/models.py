from django.db import models

# Create your models here.
class entryToken(models.Model):
    phno = models.CharField(max_length=10)
