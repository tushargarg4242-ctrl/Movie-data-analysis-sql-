# Movie Industry Data Analysis

## Overview
This project analyzes a movie dataset to uncover insights about movie performance, financial success, and audience preferences.  
The analysis includes data cleaning, exploratory data analysis (EDA), SQL-based querying, and an interactive Power BI dashboard to visualize key trends.

The goal of the project is to understand factors that influence movie success, such as genre popularity, revenue trends, and director performance.

---

## Dataset
The dataset contains information about movies including financial data, ratings, and production details.

**Key features include:**

- Movie Name
- Year
- Genre
- Director
- Star (Lead Actor)
- Budget
- Gross Revenue
- IMDB Score
- Votes
- Production Company
- Runtime

These variables allow analysis of movie popularity, financial performance, and industry trends.

---

## Tools Used

- **Python** – Data loading and initial exploration
- **SQL (MySQL/PostgreSQL/SQL Server)** – Data analysis and querying
- **Power BI** – Data visualization and dashboard creation

---

## Project Steps

### 1. Data Loading
The dataset was loaded and inspected using Python to understand its structure and key variables.

### 2. Data Cleaning
Data cleaning steps included:
- Checking for missing values
- Handling duplicates
- Converting data types
- Ensuring consistency in financial fields

### 3. Exploratory Data Analysis (EDA)
EDA was performed to explore patterns and trends in the dataset, such as:
- Movies released per year
- Most common genres
- Highest rated movies
- Highest grossing movies

### 4. SQL Analysis
SQL queries were used to generate deeper insights, including:

- Top actors by average movie rating
- Best director–genre combinations
- Profit analysis (Gross − Budget)
- Return on Investment (ROI)
- Budget vs revenue relationship
- Top production companies

---

## Dashboard

An interactive **Power BI dashboard** was created to visualize insights from the dataset.

### Key Metrics
- Total Movies
- Total Revenue
- Average Rating
- Total Profit

### Visualizations
- Movies & Revenue Trend by Year
- Top Directors
- Top Genres
- Top Production Companies
- Highest Grossing Movies
- Budget vs Gross Relationship

The dashboard includes filters to explore the data by **year, genre, and director**.

---

## Results

Key insights from the analysis include:

- Certain genres dominate movie production.
- Higher budget movies generally generate higher revenue.
- Some low-budget movies achieve very high ROI.
- A few production companies produce a large share of movies.
- Certain directors consistently perform well within specific genres.

---

## How to Run

1. Clone this repository.
2. Load the dataset into your SQL database.
3. Run the SQL queries to perform analysis.
4. Open the Power BI dashboard file to explore the visual insights.

---
