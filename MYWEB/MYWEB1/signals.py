from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import Producto, categoria

@receiver(post_save, sender=categoria)
def create_products(sender, instance, created, **kwargs):
    if created:
        # Crea tres nuevos productos con el nombre de la categoría y precios aleatorios
        for i in range(3):
            price = randint(10, 100)
            Producto.objects.create(name=f'{instance.name} Producto {i+1}', 
                                   description='Descripción del producto', 
                                   price=price)
