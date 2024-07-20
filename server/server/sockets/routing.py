from django.urls import re_path

from server.sockets.consumers import TestConsumer

urlpatterns = [
    re_path(r"ws/", TestConsumer.as_asgi()),
]