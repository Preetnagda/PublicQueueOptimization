# Generated by Django 3.0 on 2019-12-09 16:04

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0003_auto_20191209_1128'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentqueue',
            name='date_time',
            field=models.DateField(default=datetime.datetime(2019, 12, 9, 16, 4, 14, 504151)),
        ),
    ]
