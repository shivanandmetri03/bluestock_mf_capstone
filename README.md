# bluestock_mf_capstone

## Mutual Fund Data Engineering Capstone Project

---

# Project Overview

This project is an end-to-end Mutual Fund Data Engineering and Analytics Capstone designed to simulate a real-world financial data pipeline and analytical workflow.

It focuses on building a complete ETL pipeline, data warehouse, and SQL analytics layer for mutual fund datasets.

The project demonstrates portfolio-ready data engineering practices by integrating data ingestion, cleaning, warehousing, analytics, visualization, and reporting into a structured workflow.

---

# Project Objectives

* Data ingestion
* Data cleaning and validation
* ETL pipeline development
* SQLite data warehousing
* SQL analytics
* Mutual fund performance analysis
* Portfolio-ready data engineering practices
* Financial data transformation and reporting

---

# Tech Stack

* Python
* Pandas
* SQLAlchemy
* SQLite
* SQL
* Git & GitHub
* Power BI *(Upcoming)*

---

# Project Structure

```bash id="u1x7kp"
bluestock_mf_capstone/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── database/
│   └── bluestock_mf.db
│
├── docs/
│   └── data_dictionary.md
│
├── notebooks/
│
├── scripts/
│   ├── clean_nav_history.py
│   ├── clean_transactions.py
│   ├── clean_performance.py
│   └── load_sqlite.py
│
├── sql/
│   ├── schema.sql
│   └── queries.sql
│
├── charts/
│   ├── nav_trends.png
│   ├── aum_distribution.png
│   ├── sip_growth.png
│   ├── expense_ratio_analysis.png
│   ├── returns_comparison.png
│   └── transaction_analysis.png
│
├── reports/
│   ├── eda_report.pdf
│   └── insights_summary.md
│
├── README.md
└── requirements.txt
```

---

# Key Features

## Data Ingestion

* Imported mutual fund datasets from raw sources
* Organized raw and processed datasets separately
* Built reusable ETL workflow for data processing

---

## Data Cleaning & Validation

* Standardized date formats
* Removed duplicate records
* Validated NAV values
* Standardized transaction types
* Checked expense ratio ranges
* Handled missing and null values
* Cleaned inconsistent financial records
* Improved dataset quality and reliability

---

## ETL Pipeline Development

* Automated cleaning workflows using Python scripts
* Built modular ETL scripts for scalability
* Processed datasets before warehouse loading
* Prepared analytics-ready datasets

Scripts included:

* `clean_nav_history.py`
* `clean_transactions.py`
* `clean_performance.py`
* `load_sqlite.py`

---

# Data Warehouse Design

Implemented SQLite Star Schema architecture for analytical querying.

## Dimension Tables

* `dim_fund`
* `dim_date`

## Fact Tables

* `fact_nav`
* `fact_transactions`
* `fact_performance`
* `fact_aum`

---

# SQL Analytics

Created analytical SQL queries for:

* Top funds by AUM
* Monthly NAV analysis
* SIP growth trends
* State-wise transaction analysis
* Expense ratio analysis
* Returns comparison
* Fund performance tracking
* Investor transaction insights

---

# Exploratory Data Analysis (EDA)

Performed detailed EDA to identify trends and insights from mutual fund datasets.

Analysis included:

* NAV trend analysis
* SIP growth analysis
* AUM distribution analysis
* Expense ratio comparison
* Returns comparison across schemes
* Transaction behavior analysis

---

# Data Visualization

Generated analytical visualizations using Python libraries.

Charts included:

* NAV Trends
* AUM Distribution
* SIP Growth Analysis
* Expense Ratio Analysis
* Returns Comparison
* Transaction Analysis

Visualization tools:

* Matplotlib
* Plotly

---

# Database

SQLite database file:

```bash id="m8r2dw"
database/bluestock_mf.db
```

---

# Reports & Documentation

Project deliverables include:

* EDA report in PDF format
* Insights summary documentation
* Data dictionary
* SQL schema documentation
* Analytical SQL queries
* ETL scripts
* GitHub repository documentation

---

# Setup Instructions

## Clone Repository

```bash id="d5v7nc"
git clone https://github.com/shivanandmetri03/bluestock_mf_capstone.git
```

## Install Dependencies

```bash id="h3q9tm"
pip install -r requirements.txt
```

## Run Cleaning Scripts

```bash id="w6j1pe"
python scripts/clean_nav_history.py
python scripts/clean_transactions.py
python scripts/clean_performance.py
```

## Load Data into SQLite

```bash id="r4n8kx"
python scripts/load_sqlite.py
```

---

# Deliverables

* Cleaned datasets
* Processed datasets
* SQLite database
* SQL schema
* Analytical SQL queries
* Data dictionary
* ETL scripts
* Charts and visualizations
* EDA report
* GitHub repository

---

# Future Enhancements

* Power BI Dashboard
* Streamlit Web Application
* Automated ETL Scheduling
* Cloud Deployment
* API Integration
* Advanced Financial KPIs
* Real-time data ingestion
* Interactive dashboards

---

# Author

## Shivanand Metri

GitHub: https://github.com/shivanandmetri03
