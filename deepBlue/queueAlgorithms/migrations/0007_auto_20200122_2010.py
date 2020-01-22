# Generated by Django 3.0 on 2020-01-22 14:40

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('queueAlgorithms', '0006_auto_20200121_1206'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentrecords',
            name='consultation_in',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 22, 20, 10, 43, 263542)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='consultation_out',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 22, 20, 10, 43, 263557)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='time_in',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 22, 20, 10, 43, 263520)),
        ),
        migrations.AlterField(
            model_name='billingrecords',
            name='date_time',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 22, 20, 10, 43, 264155)),
        ),
    ]
