# Generated by Django 3.0 on 2020-01-13 18:01

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('queueAlgorithms', '0002_auto_20191220_0051'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentrecords',
            name='consultation_in',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 13, 23, 31, 19, 954905)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='consultation_out',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 13, 23, 31, 19, 954917)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='time_in',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 13, 23, 31, 19, 954887)),
        ),
    ]
