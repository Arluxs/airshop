# Generated by Django 4.1.7 on 2023-04-19 05:08

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('MYWEB1', '0004_rename_correo_cliente_email'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cliente',
            old_name='contraseña',
            new_name='contrasena',
        ),
        migrations.RenameField(
            model_name='cliente',
            old_name='email',
            new_name='correo',
        ),
    ]
