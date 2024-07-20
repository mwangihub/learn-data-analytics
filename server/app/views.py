from django.shortcuts import render
from django.http import HttpResponse
from django.views import View
from django.shortcuts import render

class AppView(View):

    def get(self, request):
        context={}
        return render(request, template_name='app/index.html', context=context)

    def post(self, request):
        data = request.POST
        return HttpResponse(f'This is a POST request with data: {data}')
