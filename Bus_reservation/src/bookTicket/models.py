from django.db import models
from django.contrib.auth.models import User
from bus.models import BusInfo
# Create your models here.
class bookAticket(models.Model):
    #each indivitual status 
    PENDING = 'P'
    CONFIRMED = 'C'
    
    TICKET_STATUSES = ((PENDING,'Pending'),
                      (CONFIRMED,'Confrimed'),)
    
    #booking Info
    booking_date = models.DateTimeField()
    status = models.CharField(choices=TICKET_STATUSES,default=PENDING,max_length=2)
    ip_address = models.GenericIPAddressField()
    last_updated = models.DateTimeField(auto_now=True)
    user= models.ForeignKey(User)
    bus = models.ForeignKey(BusInfo)
    date=models.DateTimeField(auto_now_add=True)
    #contact Info 
    email=models.EmailField(max_length=50)
    phone = models.CharField(max_length=20)
    
    #no. of ppl
    booking_seats_num =models.IntegerField(default=1)
    fare = models.DecimalField(max_digits=9,decimal_places=2)
    
    class Meta:
        verbose_name_plural = 'Booked Tickets'
    def __str__(self):
        return 'BUSBK#00'+str(self.id)
    
    @property
    def total(self):
        total = self.fare*self.booking_seats_num
        return total
    