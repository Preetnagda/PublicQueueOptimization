# Generated by Django 2.2.7 on 2019-12-18 05:10

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0007_auto_20191218_1038'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentqueue',
            name='consultation_time_in',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 18, 10, 40, 40, 793400)),
        ),
        migrations.AlterField(
            model_name='appointmentqueue',
            name='date_time',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 18, 10, 40, 40, 792904)),
        ),
    ]
