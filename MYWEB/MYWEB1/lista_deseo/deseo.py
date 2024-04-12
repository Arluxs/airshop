"""from MYWEB1.models import Cliente, Producto
from django.db import models

class ListaDeseo(models.Model):
    id_deseo = models.AutoField(primary_key=True)
    id_producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    id_cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE)

    def __str__(self):
        return f'Lista de deseo #{self.id_deseo}'"""