# Generated by Django 4.1.7 on 2023-04-07 02:56

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('Contact', '0003_delete_contactform'),
    ]

    operations = [
        migrations.CreateModel(
            name='contactForm',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
                ('body', models.TextField()),
            ],
        ),
    ]
