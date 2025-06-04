from django.db import models

# Create your models here.
from django.db.models import CASCADE


class ClientRegister_Model(models.Model):
    username = models.CharField(max_length=30)
    email = models.EmailField(max_length=30)
    password = models.CharField(max_length=10)
    phoneno = models.CharField(max_length=10)
    country = models.CharField(max_length=30)
    state = models.CharField(max_length=30)
    city = models.CharField(max_length=30)
    gender= models.CharField(max_length=30)
    address= models.CharField(max_length=30)


class predict_safety(models.Model):

    Fid= models.CharField(max_length=300)
    Drug1_Name= models.CharField(max_length=300)
    Drug1_Condition= models.CharField(max_length=300)
    Drug2_Name= models.CharField(max_length=300)
    Drug2_Condition= models.CharField(max_length=300)
    Patient_Gender= models.CharField(max_length=300)
    Patient_Age= models.CharField(max_length=300)
    Area= models.CharField(max_length=300)
    Drug1_To_Drug2_Response= models.CharField(max_length=300)
    Prediction= models.CharField(max_length=300)

class detection_accuracy(models.Model):

    names = models.CharField(max_length=300)
    ratio = models.CharField(max_length=300)

class detection_ratio(models.Model):

    names = models.CharField(max_length=300)
    ratio = models.CharField(max_length=300)



