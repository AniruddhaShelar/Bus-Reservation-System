from django.shortcuts import render_to_response
from django.http import HttpResponse
from django.template import RequestContext
from .models import BusInfo,BusDropArea,BusPickArea

import json
# Create your views here.
def index (request, template_name ='bus_resrv_system.html'):
    page_title = 'Bus'
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def search_bus(request,template_name ='bus/search_bus.html'):
    page_title = 'Book a ticket'
    
    if request.method == 'POST':
        post_data = request.POST.copy()
        area_from_id = post_data.get('area_from_id')
        area_to_id = post_data.get('area_to_id') 
        bus_info_list= BusInfo.objects.filter(arriving_from_id=area_from_id,depature_at_id=area_to_id)
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))


def autocomplete_pick(request):
    if request.is_ajax():
        q = request.GET.get('term', '')
        drugs = BusPickArea.objects.filter(area_name__icontains = q )[:20]
        results = []
        for drug in drugs:
            drug_json = {}
            drug_json['id'] = drug.id
            drug_json['label'] = drug.area_name
            drug_json['value'] = drug.area_name
            results.append(drug_json)
        data = json.dumps(results) 
    else:
        data = 'fail'
    mimetype = 'application/json'
    return HttpResponse(data, mimetype)

def autocomplete_drop(request):
    if request.is_ajax():
        q = request.GET.get('term', '')
        drugs = BusDropArea.objects.filter(area_name__icontains = q )[:20]
        results = []
        for drug in drugs:
            drug_json = {}
            drug_json['id'] = drug.id
            drug_json['label'] = drug.area_name
            drug_json['value'] = drug.area_name
            results.append(drug_json)
        data = json.dumps(results) 
    else:
        data = 'fail'
    mimetype = 'application/json'
    return HttpResponse(data, mimetype)