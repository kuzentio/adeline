from django.db import models


class Slide(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)
    subtitle = models.CharField(max_length=255, blank=True, null=True)
    image = models.ImageField(help_text="Resolution 1920x805", upload_to='slides')
    url = models.URLField(help_text="It will add Shop Now button with provided link", blank=True, null=True)

