# Generated by Django 3.1.7 on 2021-11-03 03:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0003_auto_20211102_2159'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='marca',
            field=models.ManyToManyField(to='products.Marca'),
        ),
    ]
