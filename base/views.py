from django.shortcuts import render

# Create your views here.

rooms = [
    {'id':1, 'name':'lets learn python'},
    {'id':2, 'name':'design with me'},
    {'id':3, 'name':'frontend developers'},
    
]

def home(request):
    return render(request, 'home.html',{'rooms':rooms})


def room(request):
    return render(request, 'room.html')