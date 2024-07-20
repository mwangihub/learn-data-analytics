from django.urls import path
from app import views

app_label='app'

urlpatterns = [
    path("", views.AppView.as_view(), name='app_view')
]
