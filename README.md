# Customer Behavior Analysis & Interactive Dashboard

## 🌍 Live Dashboard

👉 https://samiya-hiya.github.io/customer-behavior-analysis-dashboard/

### ⚠️ How to View the Visualizations

After opening the live dashboard:

1. Download the file **`converted-data.json`** from this repository.
2. Click the **Upload JSON file** button in the dashboard.
3. Select the downloaded `converted-data.json` file.
4. The interactive visualizations will load instantly.

The dashboard runs entirely in the browser.  
No data is stored or transmitted to any server.



## 📌 Project Overview

This project analyzes customer shopping behavior using transactional retail data to uncover insights into spending patterns, customer segments, product performance, and subscription behavior.

The project demonstrates a complete data workflow:

- Data cleaning and exploratory analysis using Python
- Business-driven analysis using MySQL
- Interactive visualization using HTML, CSS, JavaScript, and Plotly.js

---

## 🗂 Dataset

The dataset contains approximately 3,900 customer transaction records with 18 features, including:

- Demographics: age, gender, location, subscription status
- Purchase details: item purchased, category, purchase amount, season
- Behavioral metrics: previous purchases, purchase frequency, review rating

---

## 🐍 Data Cleaning & Exploratory Data Analysis (Python)

Data preparation was performed using:

- Pandas
- NumPy

### Key Steps:

- Inspected structure and summary statistics
- Handled missing values (review ratings imputed using category median)
- Standardized column names
- Created derived features:
  - Age groups
  - Repeat customer indicator
  - Purchase frequency metrics
- Performed exploratory analysis to understand:
  - Revenue distribution
  - Category performance
  - Customer behavior trends

The cleaned dataset was then exported for SQL-based analysis.

---

## 🗄 SQL Analysis (MySQL)

The cleaned data was loaded into MySQL to perform structured analytical queries.

### Business Questions Answered:

- What is total revenue by gender?
- Do subscribers spend more than non-subscribers?
- Which products have the highest average rating?
- How does seasonal demand vary by category?
- What percentage of revenue comes from repeat customers?
- Which products rely heavily on discounts?
- How do customer segments (New, Returning, Loyal) differ?

These SQL analyses formed the foundation of the final dashboard insights.

---

## 📊 Interactive Dashboard (HTML + Plotly.js)

An interactive dashboard was built to present insights dynamically.

### Features:

- Local JSON upload
- Interactive filters:
  - Category
  - Season
  - Gender
  - Subscription status
- KPI cards:
  - Total revenue
  - Average rating
  - Subscriber percentage
  - Repeat customer percentage
- Visualizations:
  - Purchase amount vs review rating (scatter plot)
  - Seasonal demand heatmap
  - Age group vs purchase frequency (bar chart)
  - Subscriber vs non-subscriber comparison (box plot)
  - Geographic revenue distribution (choropleth)
  - Top products table

---

## 🔎 AI Transparency Statement

The HTML/JavaScript dashboard structure was generated with AI assistance.

My primary contributions include:

- Data cleaning and preprocessing in Python
- Feature engineering
- SQL query design and analysis using MySQL
- Insight generation and business interpretation
- Validation and adaptation of the dashboard to match the dataset

The AI-generated code was used solely as a visualization layer for presenting the analysis.

---

## 📈 Key Insights

- Subscribers contribute disproportionately to total revenue.
- Repeat customers generate a significant portion of total sales.
- Certain categories demonstrate strong seasonal purchasing behavior.
- Some products show high discount dependency, indicating potential margin risks.

---

## 🛠 Tech Stack

- Python (Pandas, NumPy)
- MySQL
- HTML, CSS, JavaScript
- Plotly.js

---

## 📷 Dashboard Preview
<img width="1445" height="814" alt="Screenshot 2026-02-17 at 15 27 38" src="https://github.com/user-attachments/assets/84669848-d5f0-4348-b225-5deca296ac29" />
<img width="1448" height="810" alt="Screenshot 2026-02-17 at 15 27 56" src="https://github.com/user-attachments/assets/c311263f-386c-4aa4-9c3b-20d4cc19a570" />
<img width="1426" height="708" alt="Screenshot 2026-02-17 at 15 28 18" src="https://github.com/user-attachments/assets/fc6da3b7-47e1-4ee5-b24e-a552350771be" />
<img width="1425" height="779" alt="Screenshot 2026-02-17 at 15 28 36" src="https://github.com/user-attachments/assets/a4d616f2-e396-44a6-afa3-f6cffa7a100d" />

---

## 🎯 Purpose of This Project

This project demonstrates:

- End-to-end data workflow capability
- SQL-based business analysis
- Interactive visualization skills
- Ability to translate raw data into actionable insights
