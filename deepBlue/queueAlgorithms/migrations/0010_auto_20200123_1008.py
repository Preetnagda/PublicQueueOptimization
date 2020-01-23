# Generated by Django 2.2.7 on 2020-01-23 04:38

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('queueAlgorithms', '0009_auto_20200122_2206'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentrecords',
            name='consultation_in',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 23, 10, 8, 3, 22046)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='consultation_out',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 23, 10, 8, 3, 22046)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='time_in',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 23, 10, 8, 3, 22046)),
        ),
        migrations.AlterField(
            model_name='billingrecords',
            name='date_time',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 23, 10, 8, 3, 23164)),
        ),
    ]
