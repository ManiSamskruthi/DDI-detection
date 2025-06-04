"""
WSGI config for explainable_artificial_intelligence_for_patient_safety.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.0/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'PredictingDrugToDrugInteractionTypes.settings')
application = get_wsgi_application()
