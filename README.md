# Requesting City Services via AI-Driven App

This Flutter application allows users to submit municipal-related complaints by capturing images using the camera or selecting images from the gallery. The backend API, built with FastAPI, classifies the complaints and directs them to the appropriate department using a Vision Transformer model trained on a custom dataset.

## About Dataset ##
- The model is trained on self made dataset, featuring images both self-captured and sourced from the internet, across five categories:. 

    - Road and Transport Department
    - Electricity Department
    - Waste Management Department
    - Nature and Recreation Department
    - Water Supply and Management

## Features

- Capture images using the device camera or form gallery
- allows user to share location of the compliant to be registered
- Submit complaints with images and descriptions
- Automatic classification of complaints to the relevant  department

## Technology Stack

### Frontend

- **Flutter 3.19.0**
  - Dart programming language
  - BLoC (Business Logic Component) state management

### Backend

- **FastAPI**
- **Vision Transformer model for image classification**

## Installation

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter SDK
- Python 3.7+: [Install Python](https://www.python.org/downloads/)
- FastAPI: [FastAPI Documentation](https://fastapi.tiangolo.com/)

### Steps

1. **Clone the repository:**
    ```sh
    git clone https://github.com/AMANREVANKAR/summerofcode.git
    cd summerofcode
    ```

2. **Install Flutter dependencies:**
    ```sh
    cd app
    flutter pub get
    ```

3. **Run the Flutter app:**
    ```sh
    cd summerofcode/app/lib/features/complaint_form/domain/usecase.dart
    add the url for the api server
    flutter run
    ```


4. **Setup and run the backend API:**

    - Navigate to the backend directory:
      ```sh
      cd backend
      ```

    - Setting up the server:
      ```sh
      add the server ip address and port number
      ```

    - Start the FastAPI server:
      ```sh
      uvicorn APIserver:app --host ip_address --port port_no
      ```
## Working
  below is the demo video of a working app
  https://drive.google.com/file/d/1QOL003BB6ShAkGesp5ocMF6mtkS2mJcM/view?usp=drive_link      

## Directory Structure
- **summerofcode**
  - App
    - contains whole flutter app
  - backend
    - contains all the server and model files 


