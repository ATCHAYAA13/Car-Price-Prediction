# This sets up the container with Python 3.10 installed.
FROM python:3.8.19-slim

# This copies everything in your current directory to the /Car_Price_Prediction_Web_App directory in the container.
COPY . /Car_Price_Prediction_Web_App

# This sets the /Car_Price_Prediction_Web_App directory as the working directory for any RUN, CMD, ENTRYPOINT, or COPY instructions that follow.
WORKDIR /Car_Price_Prediction_Web_App

# This runs pip install for all the packages listed in your requirements.txt file.
RUN pip install -r requirements.txt

# This tells Docker to listen on port 80 at runtime. Port 80 is the standard port for HTTP.
EXPOSE 8501

# This command creates a .streamlit directory in the home directory of the container.
RUN mkdir ~/.streamlit


# HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "Car_Price_Prediction_Web_App.py", "--server.port=8501", "--server.address=0.0.0.0"]
