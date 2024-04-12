from decimal import Decimal
from django.conf import settings
from .models import Producto


''''

class Carrito:
    def __init__(self, request):
        self.request = request
        self.carrito = request.session.get(settings.CARRITO_SESSION_ID)
        if not self.carrito:
            self.carrito = request.session[settings.CARRITO_SESSION_ID] = {}

    def __len__(self):
        return sum(item['cantidad'] for item in self.carrito.values())

    def __iter__(self):
        ids_productos = self.carrito.keys()
        productos = Producto.objects.filter(id_producto__in=ids_productos)
        for producto in productos:
            self.carrito[str(producto.id_producto)]['producto'] = producto

        for item in self.carrito.values():
            item['precio'] = Decimal(item['precio'])
            item['precio_total'] = item['precio'] * item['cantidad']
            yield item

    def agregar(self, producto, cantidad=1, actualizar_cantidad=False):
        producto_id = str(producto.id_producto)
        if producto_id not in self.carrito:
            self.carrito[producto_id] = {'cantidad': 0, 'precio': str(producto.precio)}
        if actualizar_cantidad:
            self.carrito[producto_id]['cantidad'] = cantidad
        else:
            self.carrito[producto_id]['cantidad'] += cantidad
        self.guardar()

    def guardar(self):
        self.request.session[settings.CARRITO_SESSION_ID] = self.carrito
        self.request.session.modified = True

    def eliminar(self, producto):
        producto_id = str(producto.id_producto)
        if producto_id in self.carrito:
            del self.carrito[producto_id]
            self.guardar()

    def limpiar(self):
        self.request.session[settings.CARRITO_SESSION_ID] = {}
        self.request.session.modified = True

    def get_precio_total(self):
        return sum(Decimal(item['precio']) * item['cantidad'] for item in self.carrito.values())

'''
class Carrito:
    def __init__(self, request):
        self.request = request
        self.session = request.session
        carrito = self.session.get("carrito")
        if not carrito:
            self.session["carrito"] = {}
            self.carrito = self.session["carrito"]
        else:
            self.carrito = carrito

    def agregar(self, producto):
        id_producto = str(producto.id_producto)
        if id_producto not in self.carrito.keys():

            self.carrito[id_producto]={
                "id_producto": producto.id_producto,
                "nombre": producto.nombre_pro,
                "acumulado": producto.precio,
                "cantidad": 1,
                "sku_producto": producto.sku_producto,  # Agregar el SKU del producto al carrito
                
            }
        else:
            self.carrito[id_producto]["cantidad"] += 1
            self.carrito[id_producto]["acumulado"] += producto.precio
        self.guardar_carrito()




    def guardar_carrito(self):
        self.session["carrito"] = self.carrito
        self.session.modified = True

    def eliminar(self, producto):
        id = str(producto.id_producto)
        if id in self.carrito:
            del self.carrito[id]
            self.guardar_carrito()

    def restar(self, producto):
        id = str(producto.id_producto)
        if id in self.carrito.keys():
            self.carrito[id]["cantidad"] -= 1
            self.carrito[id]["acumulado"] -= producto.precio
            if self.carrito[id]["cantidad"] <= 0: self.eliminar(producto)
            self.guardar_carrito()

    def limpiar(self):
        self.session["carrito"] = {}
        self.session.modified = True

    def get_productos(self):
        productos = []
        for item in self.carrito.values():
            productos.append({
                'id_producto': item['id_producto'],
                'nombre': item['nombre'],
                'precio': item['acumulado'] / item['cantidad'],
                'cantidad': item['cantidad'],
                'precio_total': item['acumulado'],
                'sku_producto': item['sku_producto'],
            })
        return productos

    def get_total(self):
        total = 0
        for item in self.carrito.values():
            total += item['acumulado']
        return total