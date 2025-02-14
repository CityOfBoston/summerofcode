# Google Summer of Code with the City of Boston

Below, you will find a list of ideas we have for a Google Summer of Code contributors for the **summer of 2025**. Thank you for your consideration!

## Guidance for Applications and Project Proposals

You can find guidance for applications and your project proposals **[here](https://cityofboston.github.io/summerofcode/guidance)**.

## Ideas List for 2025

### 1. Interactive Curb Management Planning Tool

As our city navigates the rise of ride-sharing, delivery services, bike lanes, and evolving traffic patterns, the City of Boston's Streets Cabinet faces increasingly complex challenges in optimizing our finite curb space. Traditional space-by-space planning approaches no longer suffice for managing what has become an intricate ecosystem of competing demands in our dense urban neighborhoods.

Boston's transportation planners currently face a significant challenge. While planning street redesigns across the city's diverse neighborhoods, they lack tools to understand and model how changes will impact the broader ecosystem. We need to prototype an interactive tool will help our planners to visualize and optimize curb usage in our neighborhoods.  This tool will help city planners:
- Visualize current curb usage patterns across multiple Boston neighborhoods
- Model the impact of proposed changes on surrounding areas utilizing key planning metrics

Future versions of the tool will:
- Analyze competing demands for curb space in high-traffic areas
- Generate data-driven recommendations for optimal curb allocation

We give this project a **medium** level difficulty. The project can be completed in **175 hours**.

This project requires experience in web-based interactive mapping technologies and data visualization. The contributor should be comfortable working with spatial data and prototyping user interfaces with libraries like Bootstrap or Tailwind.

The mentors for the project will include key staff from the City of Boston's Office of Emerging Technology, including one who served as a Google Summer of Code mentor at Code for America in 2011 and the City of Boston between 2021 and 2024.

### 2. Modern 311 Service Request Dashboard

Boston 311 serves as the City's constituent service center. 311 is a non-emergency municipal service system that allows residents to report issues (like potholes, graffiti, noise complaints) and request city services through phone, web, or mobile apps. It serves as a centralized way for cities to track, manage and respond to citizen requests while keeping emergency 911 lines free for actual emergencies.

Over the years, we've developed various 311 dashboards to help residents and City officials understand service request patterns and response times. While these dashboards serve their purpose, we see an opportunity to create more engaging and interactive visualizations using modern web technologies that can efficiently handle large volumes of 311 request data.

This project will include the following activities: 

* Creating reusable visualization components using Mapbox GL and D3.js specifically designed for 311 service request data, including:

  * Visualizing request density across neighborhoods
  * Time-series visualizations of request volumes and response times
  * Category-based visualizations for different types of service requests

* Implementing a component library with interactive features tailored for 311 data analysis:

  * Temporal filtering to analyze patterns by time of day, day of week, and seasonality
  * Dynamic filtering by request type, status, and neighborhood
  * Enabling cross-filtering so users can select a portion of data in one visaulization and explore patterns across different views of the same dataset (e.g, highlighting a time range in a bar chart to filter the data shown in connected visualizations like maps and other charts)

* Prototyping a 311 dashboard that demonstrates:

  * Geographic distribution of service requests
  * Response time analysis by request type and neighborhood
  * Trend analysis showing historical patterns and current hotspots

We give this project a **medium** level of difficulty. The project can be completed in 175 hours.

This project will require experience with JavaScript, familiarity with open-source JavaScript libraries for interactive maps (Mapbox GL, MapLibre), and experience with modern visualization libraries (D3.js). Experience with geospatial data formats is also desired.

The mentors for the project will include key staff from the City of Boston's Office of Emerging Technology, including one who served as a Google Summer of Code mentor at Code for America in 2011 and the City of Boston between 2021 and 2024.

### 3. Using Computer Vision for Curb-Use Analysis

The City of Boston's Transportation Department relies on labor-intensive manual processes for parking studies, where City planners walk Boston's neighborhoods with clipboards, recording license plates at 15-minute intervals. This methodology limits the scope and depth of curb usage analysis, providing only a narrow snapshot of parking patterns in our urban areas.

Boston's Office of Emerging Technology has identified an opportunity to change how the City conducts parking studies. By applying computer vision technology to analyze video feeds from standard cameras like GoPros, we can expand both the geographical scope and temporal range of curb usage analysis across Boston, while simultaneously reducing manual effort.

A Google Summer of Code contributor will prototype a tool that:
- Processes video feeds from off-the-shelf cameras using local object detection models (e.g., YOLOv8) or computer vision APIs (e.g., Vision AI) to detect and classify types of curb usage across Boston's streets (focusing on parking, delivery, and double parking)
- Generates reports for the Transportation Department detailing parking patterns and turnover rates at specific locations

Future versions of the tool will:
- Track multiple behaviors including parking duration, double parking, and loading zone utilization specific to Boston's unique urban context
- Aggregate data across multiple locations and time periods to create complete parking studies for neighborhood planning

The technical implementation will focus on evaluating computer vision APIs and/or training and optimizing object detection models (YOLOv8  or others) for urban curb usage analysis, with direct support from engineers and data scientists with the City of Boston's Office of Emerging Technology and Department of Innovation and Technology.

We give this project a **medium** level of difficulty. The project can be completed in **175 hours**.

This project requires experience with computer vision technologies, particularly in training and implementing object detection models. The contributor should be comfortable working with video processing pipelines and basic statistics.

The mentors for the project will include key staff from the City of Boston's Office of Emerging Technology, including one who served as a Google Summer of Code mentor at Code for America in 2011 and the City of Boston between 2021 and 2024.
