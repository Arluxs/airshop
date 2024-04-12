from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import CustomUser, Venta, Cliente, Producto, categoria
import matplotlib.pyplot as plt
from django.db.models import Count


class ProductoAdmin(admin.ModelAdmin):
    list_display = ['nombre_pro', 'descripcion', 'precio', 'categoria', 'sku_producto']

# Verificar si Producto ya está registrado antes de registrar nuevamente
if admin.site.is_registered(Producto):
    admin.site.unregister(Producto)

admin.site.register(Producto, ProductoAdmin)

class CategoriaAdmin(admin.ModelAdmin):
    list_display = ['id_categoria', 'descripcion_ca']

admin.site.register(categoria, CategoriaAdmin)

admin.site.register(CustomUser)

class VentaAdmin(admin.ModelAdmin):
    list_display = ('id_venta', 'nombre_producto', 'fecha', 'total', 'nombre_cliente')

    def nombre_producto(self, obj):
        return Producto.objects.get(sku_producto=obj.sku_producto).nombre_pro

    def nombre_cliente(self, obj):
        return Cliente.objects.get(rut=obj.rut).nombre

    nombre_producto.short_description = 'Nombre Producto'
    nombre_cliente.short_description = 'Nombre Cliente'

admin.site.register(Venta, VentaAdmin)

