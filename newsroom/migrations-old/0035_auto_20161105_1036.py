# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-11-05 08:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('newsroom', '0034_commission_invoice'),
    ]

    operations = [
        migrations.AlterField(
            model_name='commission',
            name='description',
            field=models.CharField(blank=True, default='Article author', max_length=30),
        ),
    ]