from django.db import models
# Create your models here.
class BusPickArea(models.Model):
    area_name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=255,unique=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        db_table='busrv_busPickArea'
        ordering=['-created_at']
    def __str__(self):
        return self.area_name
    
class BusDropArea(models.Model):
    area_name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=255,unique=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        db_table='busrv_busDropArea'
        ordering=['-created_at']
    def __str__(self):
        return self.area_name
    

class BusInfo(models.Model):
    #Bus type 
    AC = 'AC'
    NON_AC = 'NAC'
    
    BUS_TYPES = ((AC,'AC Bus'),
                      (NON_AC,'Non AC bus'),)
    
    bus_name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=255,unique=True)
    bus_description = models.TextField()
    type = models.CharField(choices=BUS_TYPES,default=AC,max_length=10)
    arriving_time= models.TimeField()
    depature_time= models.TimeField()
    arriving_from = models.ForeignKey(BusPickArea,unique=False)
    depature_at = models.ForeignKey(BusDropArea,unique=False)
    fare = models.DecimalField(max_digits=9,decimal_places=2)
    no_of_seats = models.IntegerField(default=10)
    is_active = models.BooleanField(default=True)    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    image = models.ImageField(upload_to='images/bus/main/')
    class Meta:
        db_table='busrv_busInfo'
        ordering=['-created_at']
    def __str__(self):
        return self.bus_name

