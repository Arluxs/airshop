from django.apps import AppConfig


class Myweb1Config(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'MYWEB1'

class EcommerceConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'ecommerce'

    def ready(self):
        import ecommerce.signals


class MyAppConfig(AppConfig):
    name = 'MYWEB1'
    default_auto_field = 'django.db.models.BigAutoField'
    verbose_name = 'MYWEB1'

    def ready(self):
        # Importar y registrar los filtros personalizados
        from .templatetags import my_filters