from django.conf.urls import url
from . import views
app_name = 'bookTicket'
urlpatterns  = [
    url(r'^book-ticket/(?P<bus_id>[−\w]+)/$', views.book_ticket,name='bookTicket'),
]