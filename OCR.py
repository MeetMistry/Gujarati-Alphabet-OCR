#!/usr/bin/env python
# coding: utf-8

# In[2]:


from tensorflow.keras.layers import Input, Lambda, Dense, Flatten
from tensorflow.keras.models import Model
from tensorflow.keras.applications.vgg16 import VGG16
from tensorflow.keras.applications.vgg16 import preprocess_input
from tensorflow.keras.preprocessing import image
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras.models import Sequential
import numpy as np
from glob import glob
import matplotlib.pyplot as plt


# In[3]:


IMAGE_SIZE = [224, 224]


# In[4]:


train_path = 'D:/SGP_SEM7/Train'
valid_path = 'D:/SGP_SEM7/Test'


# In[5]:


vgg = VGG16(input_shape=IMAGE_SIZE + [3], weights='imagenet', include_top=False)


# In[6]:


for layer in vgg.layers:
  layer.trainable = False


# In[7]:


folders = glob('D:/SGP_SEM7/Train/*')


# In[8]:


x = Flatten()(vgg.output)
# x = Dense(1000, activation='relu')(x)
prediction = Dense(len(folders), activation='softmax')(x)


# In[9]:


model = Model(inputs=vgg.input, outputs=prediction)


# In[10]:


model.summary()


# In[11]:


model.compile(loss='categorical_crossentropy',optimizer='adam',metrics=['accuracy'])


# In[12]:


from tensorflow.keras.preprocessing.image import ImageDataGenerator


# In[14]:


train_datagen = ImageDataGenerator(rescale = 1./255,shear_range = 0.2,zoom_range = 0.2,horizontal_flip = True)

test_datagen = ImageDataGenerator(rescale = 1./255)

training_set = train_datagen.flow_from_directory('D:/SGP_SEM7/Train',target_size = (224, 224),batch_size = 32,class_mode = 'categorical')

test_set = test_datagen.flow_from_directory('D:/SGP_SEM7/Test',target_size = (224, 224),batch_size = 32,class_mode = 'categorical')


# In[15]:


r = model.fit_generator(training_set,validation_data=test_set,epochs=5,steps_per_epoch=len(training_set),validation_steps=len(test_set))


# In[31]:


import tensorflow as tf


# In[34]:


from tensorflow.keras.models import load_model


# In[38]:


model.save('test_model.h5')


# In[ ]:




