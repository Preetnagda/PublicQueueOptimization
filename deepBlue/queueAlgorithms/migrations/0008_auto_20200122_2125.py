# Generated by Django 3.0 on 2020-01-22 15:55

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('queueAlgorithms', '0007_auto_20200122_2010'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentrecords',
            name='consultation_in',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 22, 21, 25, 30, 828467)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='consultation_out',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 22, 21, 25, 30, 828489)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='time_in',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 22, 21, 25, 30, 828436)),
        ),
        migrations.AlterField(
            model_name='billingrecords',
            name='date_time',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 22, 21, 25, 30, 829487)),
        ),
    ]
