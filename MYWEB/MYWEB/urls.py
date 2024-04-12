"""MYWEB URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from .  import views
from .views import wishlist, CustomLoginView, user_profile
from django.urls import path, include
from MYWEB1.views import listar_categorias, producto_detail, registro, lista_productos, lista_productos1, checkout, actualizar_carrito
from MYWEB1.views import agregar_al_carrito, eliminar_producto_carrito, restar_producto, limpiar_carrito, login_user, carritom, registro1
from MYWEB1.views import procesar_compra, reporte_ventas, get_regiones, get_comunas, agregar_lista_deseos, quitar_lista_deseos, lista_deseos
#from MYWEB1.views import actualizar_rutas_imagenes
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth.views import LogoutView
from MYWEB1.views import CustomUserUpdateView
from rest_productos.views import lista_usuarios, detalle_usuarios
from rest_productos.viewsLogin import login1



urlpatterns = [
    path('p', views.index, name='index'),
    path('admin/', admin.site.urls),
    #path('', lista_productos, name='index'),
    path('hello2/', views.hello_world2, name='hello2'),
    ##path('producto/', views.producto, name='productos'),
    path('wishlist/', wishlist, name='wishlist'),
    path('categorias/', listar_categorias, name='listar_categorias'),
    path('product/<int:id_producto>/', producto_detail, name='producto_detail'),
    path('product/<int:id_producto>/', lista_productos1, name='producto_detail'),
    path('registro/', registro, name='registro'),
    
    path('pp', login_user, name='login_user'),
    path('', lista_productos, name='listapro'),
    path('contacto', views.contacto, name='contacto'),
    #path('cart', views.cart, name='carrito'),
    path('agregar_al_carrito/<int:id_producto>/', agregar_al_carrito, name='Add'),
    path('eliminar/<int:id_producto>/', eliminar_producto_carrito, name="Del"),
    path('restar/<int:id_producto>/', restar_producto, name="Sub"),
    path('limpiar/', limpiar_carrito, name="CLS"),
    path('registro1/', registro1, name='registro'),
    path('accounts/', include('django.contrib.auth.urls')),
    path('accounts/profile/', user_profile, name='user_profile'),
    path('checkout/', checkout, name='checkout'),
    path('cart/', carritom, name='carrito'),
    #path('checkout/', checkout, name='checkout'),
    path('actualizar_carrito/', actualizar_carrito, name='actualizar_carrito'),
    #path('actualizar_imagenes/', actualizar_rutas_imagenes, name='actualizar_imagenes'),
    path('logout/', LogoutView.as_view(next_page='/'), name='logout'),
    path('procesar-compra/', procesar_compra, name='procesar_compra'),
    path('ventas/', reporte_ventas, name='reporte_ventas'),
    path('accounts/profile/editar/', CustomUserUpdateView.as_view(), name='editar_usuario'),
    path('productos/api', lista_usuarios, name='productos'),
    path('productos/api/<id>',detalle_usuarios, name='detalle_usuarios'),
    path('api/login/',login1, name='login1'),
    path('api/regiones/', get_regiones, name='get_regiones'),
    path('api/comunas/<int:region_id>/', get_comunas, name='get_comunas'),
    path('lista-deseos/', lista_deseos, name='lista_deseos'),
    path('agregar-lista-deseos/<int:producto_id>/', agregar_lista_deseos, name='agregar_lista_deseos'),
    path('quitar-lista-deseos/<int:producto_id>/', quitar_lista_deseos, name='quitar_lista_deseos'),







] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
