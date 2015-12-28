from django.db import models

class LightingGroup(models.Model):
  colour = models.IntegerField(default=0)
