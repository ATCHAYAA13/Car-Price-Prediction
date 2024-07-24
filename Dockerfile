# This sets up the container with Python 3.10 installed.
FROM python:3.10-slim

# This copies everything in your current directory to the /Car_Price_Prediction_Web_App directory in the container.
COPY . /Car_Price_Prediction_Web_App

# This sets the /Car_Price_Prediction_Web_App directory as the working directory for any RUN, CMD, ENTRYPOINT, or COPY instructions that follow.
WORKDIR /Car_Price_Prediction_Web_App

# This runs pip install for all the packages listed in your requirements.txt file.
RUN pip install -r requirements.txt

# This tells Docker to listen on port 80 at runtime. Port 80 is the standard port for HTTP.
EXPOSE 8501

# # This command creates a .streamlit directory in the home directory of the container.
# RUN mkdir ~/.streamlit

# # This copies your Streamlit configuration file into the .streamlit directory you just created.
# RUN cp config.toml ~/.streamlit/config.toml

# # Similar to the previous step, this copies your Streamlit credentials file into the .streamlit directory.
# RUN cp credentials.toml ~/.streamlit/credentials.toml

# This creates a .streamlit directory in the /root directory of the container.

RUN mkdir -p /Car_Price_Prediction_Web_App/.streamlit

# Copy the model file into the working directory
COPY trained_model/trained-model.sav /Car_Price_Prediction_Web_App/trained_model/trained-model.sav

# This copies your Streamlit configuration file into the .streamlit directory you just created.
COPY config.toml /Car_Price_Prediction_Web_App/.streamlit/config.toml

# This copies your Streamlit credentials file into the .streamlit directory.
COPY credentials.toml /Car_Price_Prediction_Web_App/.streamlit/credentials.toml


#Healthcheck

# HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "Car_Price_Prediction_Web_App.py", "--server.port=8501", "--server.address=0.0.0.0"]

# # This sets the default command for the container to run the app with Streamlit.
# ENTRYPOINT ["streamlit", "run"]

# # This command tells Streamlit to run your app.py script when the container starts.
# CMD ["Car_Price_Prediction_Web_App.py", "--server.port=80", "--server.address=0.0.0.0"]