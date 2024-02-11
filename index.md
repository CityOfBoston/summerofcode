# Google Summer of Code with the City of Boston

Below, you will find a list of ideas we have for a Google Summer of Code contributors for the **summer of 2024**. Thank you for your consideration!

## Guidance for Applications and Project Proposals

You can find guidance for applications and your project proposals **[here](https://cityofboston.github.io/summerofcode/guidance)**.

## Ideas List for 2024

### 1. Requesting City Services via AI-Driven Apps

Residents of Boston can request a variety of non-emergency services through the City’s 311 system. Annually, more than 300,000 requests flow into 311. These include requests for street sweeping, litter pickup, pothole repair, parking enforcement, and dozens of other services. Residents request services by calling our 311 contact center, going to our website, or using the 311 app.

The City believes that we can greatly improve the 311 experience by including AI-based image-recognition in our 311 apps. We envision a future where all a resident has to do is snap a photo of a problem they want to remedy. The AI will analyze the photo, determine the problem, and allow the user to submit a request in seconds. City staff would also benefit from this AI, as miscategorized 311 submissions can lead to mistaken deployment of resources.

To help bring this to life, a Google Summer of Code contributor will build and train an AI model based on the hundreds of thousands photos submitted to Boston’s 311 system over the last several years. The AI will be capable of analyzing images users submit and determining the type of services they are most likely to be requesting.

We give this project a **medium** level difficulty. The project can be completed in **175 hours**.

This project requires knowledge of AI-based image processing and associated libraries and tools. The trained model must be turned into a performant API that can be accessed through a Web or App-based UI. Advanced app-building experience is not necessary, but we will a basic app to test the model on a variety of devices in varying conditions.

The mentors of this project will include the City of Boston/s Senior Director of Products and Services (Basic City Services); the Chief Digital Officer; with guidance and input from the Chief Information Officer.

### 2. Web Interface for Urban Tree Canopy Detection Using Satellite and Aerial Imagery

The City of Boston’s Parks Department maintains a comprehensive data set on trees in Boston. However, it’s a manual and laborious process to get the data (such as conducting site visits for tree counts) on a regular basis. Last summer, a student built a Boston-specific model to identify trees from aerial imagery; it was based on Deep Forest, a machine learning library for tree crown detection.

This year, we would like to operationalize this project for the Parks Department. Right now, the machine learning model runs on Google Colab, which has proven difficult for staff at the Parks Department to learn. They need a simple web interface that allows for the upload of updated imagery and subsequent analysis.

We would also like to explore ways to find more insights from the aerial imagery. For example, we would also like to look at the feasibility of determining tree health and the variety of tree species across the city.
The ideal outcome would be 1) the creation of a simple web interface for the Parks Department to upload new aerial imagery for analysis, and 2) the ability to the Parks Department to generate a list of statistics on tree counts and tree healthto ensure that it continues to plants trees in an equitable manner across the city.

We give this project a **medium** level of difficulty. The project can be completed in **175 hours**.

This project will require intermediate experience with Python, machine learning (in particular TensorFlow and training models with imagery), interacting with RESTful APIs, and limited experience with JavaScript, HTML, and CSS.

The mentors for the project will include key staff from the City of Boston, including one who served as a Google Summer of Code mentor at Code for America in 2011 and the City of Boston between 2021 and 2023.

### 3. Expanded Translation for the City's 311 App with Machine Learning

In 2010, our office launched the City of Boston's [311 app](https://311.boston.gov/) (one of the first in the nation). The app allows residents to report an array on non-emergency issues (such as potholes) with their smartphones. Historically, the app has only been offered in English, and we have done some of the preliminary work to provide it in other languages. This is a very important issue to address, since up to 33% of the city does not speak English.

[Inspired by the City of San José](https://medium.com/swlh/better-language-translation-through-machine-learning-everything-i-wish-i-knew-6-months-ago-8fa212fb1731), our Google Summer of Code contributor for 2022 created a machine learning model that improves the translation of text from residents reporting issues through the 311 app. The model was based on a custom, trained model using vocabulary frequently associated with City services. Their progress can be found here:

[github.com/monum/311-translation](https://github.com/monum/311-translation)

The machine learning model works well, but still needs improvement for the languages initially tested, namely Spanish and Vietnamese. We also want to make the translation model accessible via a web-service API. Finally, the translation service does not address the following languages used by Boston's residents:

- Simplified Chinese
- Haitian Creole
- Cabo Verdean Creole
- Portuguese
- Russian
- Arabic
- French
- Somali

This summer, we would like to add two more languages to the machine learning model and make it API-accessible, in order to create a translation service. The translation service should accept text from a 311 request and return translated text that could be easily understood by our City operations teams. We will also continue to benchmark the progress of this translation service against more general translation services.

We give this project a **medium** level of difficulty. The project can be completed in **175 hours**.

This project requires intermediate experience with machine learning, building and training models with text classification, natural language processing, and Python. It will also require intermediate experience with building web service APIs with with a web framework like Flask, Django etc.

The mentors for the project will include key staff from the City of Boston, including one who served as a Google Summer of Code mentor at Code for America in 2011 and the City of Boston between 2021 and 2023.

