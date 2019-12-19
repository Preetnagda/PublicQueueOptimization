# Generated by Django 3.0 on 2019-12-18 18:41

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0011_auto_20191218_1107'),
    ]

    operations = [
        migrations.AddField(
            model_name='doctor',
            name='feePerPatient',
            field=models.DecimalField(decimal_places=2, default=100.0, max_digits=10),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='appointmentqueue',
            name='consultation_time_in',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 19, 0, 10, 24, 570173)),
        ),
        migrations.AlterField(
            model_name='appointmentqueue',
            name='date_time',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 19, 0, 10, 24, 570080)),
        ),
    ]
