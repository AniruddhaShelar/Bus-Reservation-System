from django.conf.urls import url
from django.contrib.auth import views as auth_views
from . import views
app_name = 'account'
urlpatterns = [
    url(r'^register/$',views.register,name='register'),
    url(r'^my_account/$',views.my_account,name= 'my_account'),
    url(r'^ticket-details/(?P<ticket_id>[−\w]+)/$', views.ticket_details,name='ticket_details'),
    url(r'^accounts/login/$', auth_views.login ,{'template_name': 'registration/login.html' }, name='login'),
]
