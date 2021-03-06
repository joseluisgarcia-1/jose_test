# Generated by Django 3.1.7 on 2021-11-03 01:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Store',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nit', models.CharField(max_length=100)),
                ('nombre_empresa', models.CharField(max_length=100)),
                ('nombre_comercial', models.CharField(max_length=100)),
                ('direccion', models.CharField(max_length=100)),
                ('telefono', models.CharField(max_length=100)),
                ('correo', models.EmailField(max_length=254)),
                ('sitio_web', models.URLField(max_length=100)),
                ('pais', models.CharField(max_length=100)),
                ('estado', models.CharField(max_length=100)),
                ('ciudad', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Marca',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='stores.store')),
            ],
        ),
    ]
