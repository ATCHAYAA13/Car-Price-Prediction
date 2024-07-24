# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import numpy as np
import pickle

#Loading the saved model
loaded_model = pickle.load(open("D:/ATCHAYAA THINGAL/Projects/ML/Car Price Prediction/trained-model.sav",'rb'))


# Take user input as a list
input_str = input("Enter input values as a comma-separated list (e.g., 1,1,1500,5,2018,0,1): ")
input_list = [float(x.strip()) for x in input_str.split(',')]

# Prepare the input data as a nested list 
input_data = [input_list] 

# Make the prediction
prediction = loaded_model.predict(input_data)

# Print the prediction
print(prediction)