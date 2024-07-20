import os

from channels.auth import AuthMiddlewareStack
from channels.routing import ProtocolTypeRouter, URLRouter
from django.core.asgi import get_asgi_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "server.settings")


from server.sockets.routing import urlpatterns

application = ProtocolTypeRouter(
    {
        "http": get_asgi_application(),
       'websocket': AuthMiddlewareStack(
           URLRouter(
               urlpatterns
           )
       )
    }
)
