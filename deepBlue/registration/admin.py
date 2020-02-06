from django.contrib import admin
from registration import models

# Register your models here.
admin.site.register(models.doctor)
admin.site.register(models.patient)
admin.site.register(models.appointmentQueue)

admin.site.register(models.slots)
