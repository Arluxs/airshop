from django.db import models
from django.contrib.auth.models import AbstractUser
from django.contrib.auth.models import AbstractUser, Group, Permission, AbstractBaseUser, PermissionsMixin
from django.db.models.signals import pre_save
from django.dispatch import receiver
import os
from django.conf import settings
from django.db import models
from django.db.models.signals import pre_save
from django.dispatch import receiver


#from .lista_deseo.deseo import ListaDeseo

class categoria(models.Model):
    id_categoria = models.IntegerField(primary_key=True)
    descripcion_ca = models.CharField(max_length=20)

    class Meta:
        app_label = 'MYWEB1'

    def __str__(self):
        return self.descripcion_ca
    
class Cliente(models.Model):
    id_cliente = models.IntegerField(primary_key=True)
    rut = models.CharField(max_length=11)
    nombre = models.CharField(max_length=20)
    correo = models.CharField(max_length=30)
    contrasena = models.CharField(max_length=20)
    direccion = models.CharField(max_length=20)
    fecha_nac = models.DateField()
    estatus = models.CharField(max_length=1)

    
    def __str__(self):
        return f"{self.nombre} ({self.correo})"    

class Venta(models.Model):
    id_venta = models.IntegerField(primary_key=True)
    sku_producto = models.IntegerField()
    fecha = models.DateTimeField()
    total = models.IntegerField()
    rut = models.CharField(max_length=11)

    def __str__(self):
        return f"Venta {self.id_venta}"



class Producto(models.Model):
    id_producto = models.IntegerField(primary_key=True)
    nombre_pro = models.CharField(max_length=20)
    descripcion = models.CharField(max_length=20)
    precio = models.IntegerField()
    categoria = models.ForeignKey(categoria, on_delete=models.CASCADE)
    sku_producto = models.IntegerField()
    link_img = models.ImageField(upload_to='productos/', null=True, blank=True)

    def __str__(self):
        return self.nombre_pro
    


class ListaDeseo(models.Model):
    id_deseo = models.AutoField(primary_key=True)
    
    id_producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    id_cliente = models.IntegerField()

    def __str__(self):
        return f'Lista de deseo #{self.id_deseo}'

class Facturacion(models.Model):
    id_factura = models.AutoField(primary_key=True)
    rut_cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE, db_index=True)
    id_venta = models.ForeignKey(Venta, on_delete=models.CASCADE, db_index=True)        

    
class CustomUser(AbstractUser):
    rut = models.CharField(max_length=11)
    direccion = models.CharField(max_length=100)
    fecha_nacimiento = models.DateField(null=True, blank=True)

    USERNAME_FIELD = 'username'
    EMAIL_FIELD = 'email'
    groups = models.ManyToManyField(
        Group,
        blank=True,
        help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.',
        related_name='customuser_set',
        related_query_name='user',
    )
    user_permissions = models.ManyToManyField(
        Permission,
        blank=True,
        help_text='Specific permissions for this user.',
        related_name='customuser_set',
        related_query_name='user',
    )

'''
def asignar_ruta_imagenes(sender, instance, **kwargs):
    """
    Asigna la ruta de la primera imagen y la cantidad total de imágenes al campo 'ruta_img'
    del modelo 'Producto' al momento de guardar el producto en la base de datos.
    """
    imagenes_dir = os.path.join(settings.BASE_DIR, 'static', 'imagenes', 'productos')
    nombre_producto = instance.nombre_pro.replace(" ", "")  # Eliminar espacios en el nombre del producto
    sku_producto = instance.sku_producto

    # Buscar todas las imágenes correspondientes al producto
    imagenes_producto = [f for f in os.listdir(imagenes_dir) if f.startswith(nombre_producto + '_' + str(sku_producto) + '_')]

    if imagenes_producto:
        # Ordenar las imágenes por su número de serie
        imagenes_producto.sort(key=lambda x: int(x.split('_')[-1].split('.')[0]))

        # Asignar la ruta de la primera imagen y la cantidad total de imágenes al campo 'ruta_img'
        primera_imagen = imagenes_producto[0]
        ultima_imagen = imagenes_producto[-1]
        cantidad_imagenes = len(imagenes_producto)
        ruta_imagenes = os.path.join('imagenes', 'productos', nombre_producto + '_' + str(sku_producto) + '_' + primera_imagen.split('_')[-1].split('.')[0] + '-' + ultima_imagen.split('_')[-1])
        instance.ruta_img = ruta_imagenes
        instance.cant_img = cantidad_imagenes



@receiver(pre_save, sender=Producto)
def actualizar_ruta_imagenes(sender, instance, **kwargs):
    asignar_ruta_imagenes(sender, instance, **kwargs)
    '''


class Region(models.Model):
    nombre = models.CharField(max_length=100)

    def __str__(self):
        return self.nombre

class Comuna(models.Model):
    nombre = models.CharField(max_length=100)
    region = models.ForeignKey(Region, on_delete=models.CASCADE)

    def __str__(self):
        return self.nombre