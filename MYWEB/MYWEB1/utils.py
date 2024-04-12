'''

import os
from django.conf import settings
from django.shortcuts import render
from .models import Producto


def actualizar_rutas_imagenes(request):
    print('Obteniendo ruta del directorio de imágenes...')
    imagenes_dir = os.path.join(settings.BASE_DIR, 'static', 'imagenes', 'productos')
    print(f'Ruta del directorio de imágenes: {imagenes_dir}')

    print('Actualizando rutas de imágenes...')
    for imagen_nombre in os.listdir(imagenes_dir):
        if imagen_nombre.endswith('.jpg'):
            # Extraer el nombre del producto y el SKU a partir del nombre de la imagen
            try:
                nombre_producto, sku_producto, serie_imagen = imagen_nombre.split('.')[0].split('_')
                sku_producto = int(sku_producto)
            except ValueError:
                print(f'Error al extraer el nombre de archivo de la imagen: {imagen_nombre}')
                continue

            # Buscar el producto correspondiente en la base de datos
            try:
                producto = Producto.objects.get(sku_producto=sku_producto)
            except Producto.DoesNotExist:
                print(f'No se encontró el producto en la base de datos: {imagen_nombre}')
                continue

            # Actualizar la ruta de la imagen del producto
            ruta_imagen = os.path.join('imagenes', 'productos', imagen_nombre)
            producto.ruta_img = ruta_imagen
            print(ruta_imagen)
            
            # Guardar la imagen en el campo ruta_img del objeto Producto
            with open(os.path.join(imagenes_dir, imagen_nombre), 'rb') as f:
                producto.ruta_img.save(imagen_nombre, f, save=True)

    print('Rutas de imágenes actualizadas')

    # Cargamos los productos
    productos = Producto.objects.all()
    context = {'lista_producto': productos}
    return render(request, 'lista_productos.html', context)
'''