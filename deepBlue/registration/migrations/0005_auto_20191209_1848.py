# Generated by Django 3.0 on 2019-12-09 18:48

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0004_auto_20191209_1604'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentqueue',
            name='actual_time',
            field=models.DecimalField(blank=True, decimal_places=1, default=None, max_digits=10, null=True),
        ),
        migrations.AlterField(
            model_name='appointmentqueue',
            name='date_time',
            field=models.DateField(default=datetime.datetime(2019, 12, 9, 18, 48, 33, 552519)),
        ),
    ]
