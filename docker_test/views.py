#-*- coding: utf-8 -*-
from django.http import HttpResponse

def index(request):
    return HttpResponse("this's index page")


def hello(request):
    msg = request.GET.get('message')
    if msg:
        return HttpResponse(msg)
    else:
        return HttpResponse('no message')

