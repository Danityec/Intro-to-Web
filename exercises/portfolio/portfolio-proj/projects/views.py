from django.shortcuts import render
from .models import Projects


# Create your views here.

def homepage(request):
    return render(request, 'projects/index.html')

def about(request):
    return render(request, 'projects/details.html')

def cv(request):
    return render(request, 'projects/cv.html')

def myprojects(request):
    return render(request, 'projects/my_projects.html')

def content(request): 
    return render(request, 'projects/content.html')
           
def contentfid(request):
    FULLNAME = request.GET['fullName']
    EMAIL = request.GET['email']
    SUBJECT = request.GET['Subject']
    MESSAGE = request.GET['message']
    _project = Projects(FullName = FULLNAME , EmailAddress = EMAIL, Subject = SUBJECT,Message = MESSAGE)
    _project.save()
    return render(request, 'projects/contentfid.html')
 