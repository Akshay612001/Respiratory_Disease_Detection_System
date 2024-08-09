
import tensorflow as tf
from keras.models import load_model
# global graph, model, output_list
import keras
graph = tf.get_default_graph()
#print (graph)
model = keras.models.load_model('models/newNeu_model50e.h5')

output_dict = {'Covid': 0,
               'Normal': 1,
               'Viral Pneumonia': 2,
              
               }


output_list = list(output_dict.keys())

