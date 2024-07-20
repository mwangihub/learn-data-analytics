# Django Quick Start Project

## Overview

- This project provides a simple starting point for Django development and testing. 
- It's designed for quick setup and includes several useful components:

- **Django Channels**: For handling WebSocket connections, with optional Redis support if Redis is installed on your host machine.
- **WhiteNoise**: For serving static files efficiently.
- **Django REST Framework**: For building RESTful APIs.
- **Django Environ**: For managing environment variables.
- **Django CORS Headers**: For handling Cross-Origin Resource Sharing, useful if you plan to use React or other front-end frameworks.

## Features

- **Quick Setup**: Bootstrap a simple Django project for development and testing.
- **PostgreSQL Support**: Easily run raw SQL queries for database testing.
- **Static Files Management**: WhiteNoise is included for efficient serving of static files.
- **Environment Variables**: Managed with Django Environ for better configuration handling.
- **CORS Headers**: Included for potential front-end integration with React or other frameworks.

## Requirements

- Python 3.8+
- Django 4.0+
- PostgreSQL (for database testing)
- Redis (optional, for Channels)
- Redis server (if using Redis for Channels)

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/mwangihub/django-simple.git
   cd django-simple
   ```

2. **Create a virtual environment and activate it:**

   ```bash
   python -m venv env
   source env/bin/activate  
   # On Windows use `env\Scripts\activate`
   ```

3. **Install the dependencies:**

   ```bash
   pip install -r requirements.txt
   ```

4. **Configure environment variables:**

   Create a `.env` file in the root directory with your environment-specific settings. Example:

   ```plaintext
   SECRET_KEY=your_secret_key
   DEBUG=True
   DATABASE_URL=postgres://user:password@localhost:5432/yourdatabase
   ```

5. **Apply migrations and start the server:**

   ```bash
   python manage.py migrate
   python manage.py runserver
   ```

## Optional Setup for Channels with Redis

If you want to use Redis with Django Channels, make sure Redis is installed and running on your host machine.

1. **Install Redis:**

   Follow the instructions on the [Redis website](https://redis.io/download) to install and run Redis.

2. **Update `settings.py`:**

   Ensure `CHANNEL_LAYERS` in your `settings.py` is configured correctly for Redis.

   ```python
   CHANNEL_LAYERS = {
       'default': {
            # If no redis "BACKEND": "channels.layers.InMemoryChannelLayer",
           'BACKEND': 'channels_redis.core.RedisChannelLayer',
           'CONFIG': {
               'hosts': [('127.0.0.1', 6379)],
           },
       },
   }
   ```

## Usage

- **Run server**: `python manage.py runserver`
- **Create superuser**: `python manage.py createsuperuser`

## Notes

- **Docker**: Not included in this project.
- **Celery workers**: Settings for Celery workers are not included.
- **React**: Settings for React are not included. Configure separately as needed.

## Contributing

Feel free to fork the repository and submit pull requests. For issues or feature requests, please open an issue on GitHub.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
