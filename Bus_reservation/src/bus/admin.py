from django.contrib import admin
from .models import BusInfo,BusPickArea,BusDropArea

# Register your models here.
class BusInfoAdmin(admin.ModelAdmin):
    #sets up values for how admin site lists categories
    list_display = ('bus_name', 'created_at', 'updated_at',)
    list_display_links = ('bus_name',)
    list_per_page = 20
    ordering = ['bus_name']
    search_fields = ['bus_name', 'bus_description', 'arriving_from', 'depature_at']
    exclude = ('created_at', 'updated_at',)

    # sets up slug to be generated from category name
    prepopulated_fields = {'slug' : ('bus_name',)}

admin.site.register(BusInfo, BusInfoAdmin)

class BusPickAreaAdmin(admin.ModelAdmin):
    #sets up values for how admin site lists categories
    list_display = ('area_name', 'created_at', 'updated_at',)
    list_display_links = ('area_name',)
    list_per_page = 20
    ordering = ['area_name']
    search_fields = ['area_name']
    exclude = ('created_at', 'updated_at',)

    # sets up slug to be generated from category name
    prepopulated_fields = {'slug' : ('area_name',)}

admin.site.register(BusPickArea, BusPickAreaAdmin)

class BusDropAreaAdmin(admin.ModelAdmin):
    #sets up values for how admin site lists categories
    list_display = ('area_name', 'created_at', 'updated_at',)
    list_display_links = ('area_name',)
    list_per_page = 20
    ordering = ['area_name']
    search_fields = ['area_name']
    exclude = ('created_at', 'updated_at',)

    # sets up slug to be generated from category name
    prepopulated_fields = {'slug' : ('area_name',)}

admin.site.register(BusDropArea, BusDropAreaAdmin)