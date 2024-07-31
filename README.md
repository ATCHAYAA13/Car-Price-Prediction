# Car Price Prediction

## Overview
The Car Price Prediction project is designed to estimate the market value of used cars using machine learning algorithms. Developed with Python and Streamlit, this application allows users to input various car attributes and receive accurate price predictions instantly. The project is containerized with Docker for streamlined deployment.

## Features
- **Accurate Price Prediction:** Utilizes advanced machine learning algorithms to estimate car prices based on features such as make, model, year, mileage, and fuel type.
- **Interactive Web Interface:** Built with Streamlit, providing a user-friendly and intuitive interface for easy input of car details and immediate price predictions.
- **Data-Driven Insights:** Offers predictions based on historical data, helping users understand potential car values and market trends.
- **Real-Time Predictions:** Delivers instant feedback and price estimates, enhancing user experience with quick responses.
- **Docker Containerization:** Containerized for consistent deployment and environment across different systems.
- **Modular Design:** Features a well-organized codebase with distinct modules for data preprocessing, model training, and prediction, facilitating easy maintenance and updates.
- **Customizable and Scalable:** Allows for easy adaptation and integration with additional features or systems, such as expanding the model or enhancing the interface.
- **Example Data Provided:** Includes sample data files in the `data/` directory to test and validate predictions.

## Technology Stack
- **Python:** Programming language used for development.
- **Streamlit:** Framework for building the web interface.
- **Machine Learning:** Regression models used for price prediction.
- **Docker:** Containerization for deployment.

## Setup and Usage

### Local Setup
1. **Clone the repository:**
   ```bash
   git clone https://github.com/ATCHAYAA13/Car-Price-Prediction.git
   cd Car-Price-Prediction
2. **Install Dependencies:**
  ```bash
   pip install -r requirements.txt
```
3. **Run the application:**
```bash
streamlit run Car_Price_Prediction_Web_App.py
```

###Docker Setup
1. **Pull the Docker Image:**
   ```bash
   docker pull atchayaa13/car-price-prediction

2. **Run the Docker Container:**
  ```bash
   docker run -p 8501:8501 atchayaa13/car-price-prediction
```
3. **Access the application: Open your web browser and go to http://localhost:8501.**

   
