from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def ola_mundo(request):
    return HttpResponse("Olá, Mundo!")

def ola_marcelo(request):
    return HttpResponse("Olá, MARCELO!")

def menu_inicial(request):
    return render(request, "exemplo.html")