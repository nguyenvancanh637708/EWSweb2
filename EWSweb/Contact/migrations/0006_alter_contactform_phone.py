# Generated by Django 4.1.7 on 2023-04-08 02:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Contact', '0005_contactform_avatar_contactform_phone'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contactform',
            name='phone',
            field=models.CharField(max_length=10, null=True),
        ),
    ]
