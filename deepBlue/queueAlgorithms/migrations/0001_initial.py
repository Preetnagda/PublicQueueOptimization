# Generated by Django 3.0.2 on 2020-01-23 10:25

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('registration', '0002_auto_20200123_1555'),
    ]

    operations = [
        migrations.CreateModel(
            name='billingRecords',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('billAmount', models.DecimalField(decimal_places=2, max_digits=10)),
                ('date_time', models.DateTimeField(default=datetime.datetime(2020, 1, 23, 15, 55, 30, 897543))),
                ('predicted_time', models.DecimalField(decimal_places=1, max_digits=10)),
                ('actual_time', models.DecimalField(blank=True, decimal_places=1, default=None, max_digits=10, null=True)),
                ('is_Cash', models.BooleanField(default=True)),
                ('doctor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='registration.doctor')),
                ('patient', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='registration.patient')),
            ],
        ),
        migrations.CreateModel(
            name='appointmentRecords',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('predicted_time', models.DecimalField(decimal_places=1, max_digits=10)),
                ('actual_time', models.DecimalField(decimal_places=1, max_digits=10)),
                ('time_in', models.DateTimeField(default=datetime.datetime(2020, 1, 23, 15, 55, 30, 897543))),
                ('consultation_in', models.DateTimeField(default=datetime.datetime(2020, 1, 23, 15, 55, 30, 897543))),
                ('consultation_out', models.DateTimeField(default=datetime.datetime(2020, 1, 23, 15, 55, 30, 897543))),
                ('consultation_time', models.DecimalField(blank=True, decimal_places=1, default=None, max_digits=10, null=True)),
                ('is_follow_up', models.BooleanField(default=False)),
                ('doctor_required', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='registration.doctor')),
                ('patient', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='registration.patient')),
            ],
        ),
    ]
