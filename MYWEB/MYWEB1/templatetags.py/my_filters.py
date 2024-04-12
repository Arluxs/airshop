from django import template

register = template.Library()

@register.filter
def multiply(value, arg):
    return value * arg


register = template.Library()
@register.filter
def add_class(field, class_attr):
    return field.as_widget(attrs={'class': class_attr})