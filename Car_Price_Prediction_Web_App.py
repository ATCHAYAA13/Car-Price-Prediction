# -*- coding: utf-8 -*-
"""
Created on Fri Jul 12 21:28:17 2024

@author: ATCHAYAA THINGAL
"""

import numpy as np, pickle, streamlit as st

loaded_model = pickle.load(open("/Car_Price_Prediction_Web_App/trained_model/trained-model.sav",'rb'))


#Function for prediction
def car_price_prediction(input_data):
    # Prepare the input data as a nested list
    input_data = np.array(input_data).reshape(1, -1)

    # Make the prediction
    prediction = loaded_model.predict(input_data)

    return prediction[0]

def main():
    #title
    st.title("Car Price Prediction Web App")
        
    # Input widgets for each feature
    Present_Price = st.number_input("Enter Present Price")
    Kms_Driven = st.number_input("Enter Kms Driven")
    Owner = st.selectbox("Select Number of Owners", ["First Owner", "Second Owner", "Third Owner or More"])
    Year = st.number_input("Enter Year")
    Fuel_Type = st.selectbox("Enter Fuel Type ", ["Petrol","Diesel","CNG"])
    Seller_Type = st.selectbox("Enter Seller Type ", ["Dealer","Individual"])
    Transmission = st.selectbox("Enter Transmission Type", ["Manual","Automatic"])
    
    # Mapping user-friendly labels to model's expected numerical values
    fuel_type_map = {"Petrol": 1, "Diesel": 0, "CNG": 0}  # Assuming Petrol is 1, others are 0
    seller_type_map = {"Dealer": 0, "Individual": 1}
    transmission_map = {"Manual": 1, "Automatic": 0}
    owner_map = {"First Owner": 0, "Second Owner": 1, "Third Owner or More": 2}

    # Convert user input to numerical values for the model
    Fuel_Type_Petrol = fuel_type_map[Fuel_Type]
    Seller_Type_Individual = seller_type_map[Seller_Type]
    Transmission_Manual = transmission_map[Transmission]
    Owner = owner_map[Owner]

    #Code for prediction
    result = ''  
    
    #Creating a button for prediction
    
    if st.button("Car Price Prediction Result"):
        result = car_price_prediction([Present_Price,Kms_Driven,Owner,Year,Fuel_Type_Petrol,Seller_Type_Individual,Transmission_Manual])
        
    st.success(f'The predicted car price is: {result}'  )
    
    
if __name__ == '__main__':
    main()