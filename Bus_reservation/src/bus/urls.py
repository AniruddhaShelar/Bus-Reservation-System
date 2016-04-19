from django.conf.urls import url
from . import views
app_name = 'bus'
urlpatterns  = [
    url(r'^$',views.index,name='index'),
#     url (r'^category/(?P<category_slug>[−\w]+)/$',views.show_category, name='catalog_category'),
    url(r'^search-bus/$', views.search_bus,name='searchBus'),
    url(r'^autocomplete_pick/$', views.autocomplete_pick,name='pickareas'),
    url(r'^autocomplete_drop/$', views.autocomplete_drop,name='dropareas'),
]