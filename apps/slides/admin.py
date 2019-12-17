from django.contrib import admin

from apps.slides.models import Slide


@admin.register(Slide)
class Slide(admin.ModelAdmin):
    list_display = ('title', 'image', 'url')
