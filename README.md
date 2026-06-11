# bluestock_mf_capstone

## Mutual Fund Data Engineering, Analytics & Business Intelligence Capstone Project

### Author

Shivanand Metri

### Internship

Bluestock Fintech – Data Analyst Internship

---

# Project Overview

This project is an end-to-end Mutual Fund Data Engineering, Analytics, and Business Intelligence solution developed as part of the Bluestock Fintech Data Analyst Internship Program.

The objective was to build a complete financial analytics platform covering data ingestion, ETL development, database design, SQL analytics, exploratory data analysis, fund performance evaluation, risk analytics, and interactive dashboard development.

The project simulates a real-world financial data engineering workflow and demonstrates portfolio-ready skills in Python, SQL, PostgreSQL, Power BI, and financial analytics.

---

# Project Objectives

* Data Ingestion & API Integration
* Data Cleaning & Validation
* ETL Pipeline Development
* PostgreSQL Data Warehouse Design
* SQL Analytics
* Exploratory Data Analysis (EDA)
* Fund Performance Analytics
* Risk Analytics
* Power BI Dashboard Development
* Business Intelligence Reporting

---

# Technology Stack

### Programming & Analytics

* Python
* Pandas
* NumPy
* SciPy

### Database

* PostgreSQL
* SQLAlchemy
* SQL

### Visualization

* Matplotlib
* Seaborn
* Plotly
* Power BI

### Development Tools

* Jupyter Notebook
* VS Code
* Git
* GitHub

### API Integration

* MFAPI

---

# Project Architecture

Raw Datasets + MFAPI Live Data
↓
Python ETL Pipeline
↓
Data Cleaning & Validation
↓
PostgreSQL Database
↓
SQL Analytics Layer
↓
Performance Analytics
↓
Power BI Dashboard
↓
Business Insights & Reporting

---

## Project Structure

```text
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
│   ├── Data_Ingestion.ipynb
│   ├── Data_Cleaning.ipynb
│   ├── EDA_Analysis.ipynb
│   ├── Performance_Analytics.ipynb
│   └── Advanced_Analytics.ipynb
│
├── scripts/
│   ├── live_nav_fetch.py
│   ├── clean_nav_history.py
│   ├── clean_transactions.py
│   ├── clean_performance.py
│   ├── load_database.py
│   ├── recommender.py
│   └── run_pipeline.py
│
├── sql/
│   ├── schema.sql
│   └── queries.sql
│
├── dashboard/
│   ├── bluestock_mf_dashboard.pbix
│   ├── Dashboard.pdf
│   └── screenshots/
│
├── reports/
│   ├── Final_Report.pdf
│   └── Bluestock_MF_Presentation.pptx
│
├── README.md
└── requirements.txt
```

# Database Design

The project implements a Star Schema Data Warehouse.

## Dimension Tables

* dim_fund
* dim_date

## Fact Tables

* fact_nav
* fact_transactions
* fact_performance
* fact_aum

The design supports efficient analytical querying, reporting, and dashboarding.

---

# Data Engineering Workflow

## Day 1 – Data Ingestion

* Loaded mutual fund datasets
* Fetched live NAV data using MFAPI
* Organized raw and processed datasets

## Day 2 – Data Cleaning & Database Design

* Cleaned NAV history
* Standardized transaction records
* Validated performance metrics
* Created PostgreSQL schema
* Loaded datasets into database

---

# Exploratory Data Analysis

Key analyses performed:

* NAV Trend Analysis
* AUM Growth Analysis
* SIP Inflow Analysis
* Category Inflow Analysis
* Investor Demographics Analysis
* Geographic Distribution Analysis
* Correlation Analysis
* Sector Allocation Analysis

Generated 15+ analytical charts and business insights.

---

# Performance Analytics

Calculated:

* Daily Returns
* CAGR
* Sharpe Ratio
* Sortino Ratio
* Alpha
* Beta
* Maximum Drawdown
* Fund Scorecard Ranking

These metrics were used to evaluate risk-adjusted performance across mutual fund schemes.

---

# Advanced Analytics

Implemented:

* Historical VaR (95%)
* Conditional VaR (CVaR)
* Rolling Sharpe Ratio
* Investor Cohort Analysis
* SIP Continuity Analysis
* Fund Recommendation Engine
* Sector Concentration Analysis (HHI)

---

# Power BI Dashboard

The dashboard consists of four analytical pages:

### Page 1 – Industry Overview

* Total AUM
* SIP Inflows
* Folios
* Industry Growth Trends

### Page 2 – Fund Performance

* Risk vs Return Analysis
* Fund Scorecard
* Benchmark Comparison

### Page 3 – Investor Analytics

* State-wise Transactions
* Demographic Analysis
* Transaction Type Distribution

### Page 4 – SIP & Market Trends

* SIP Growth
* Category Inflows
* Market Trends

Features:

* Interactive Filters
* Drill-through Navigation
* Dynamic KPIs
* Tooltips

---

# Key Deliverables

* ETL Pipeline
* PostgreSQL Database
* SQL Analytics
* EDA Notebook
* Performance Analytics Notebook
* Advanced Analytics Notebook
* Power BI Dashboard
* Final Report
* Presentation Deck
* GitHub Repository

---

# Setup Instructions

## Clone Repository

git clone https://github.com/shivanandmetri03/bluestock_mf_capstone.git

## Install Dependencies

pip install -r requirements.txt

## Run ETL Pipeline

python run_pipeline.py

---

# Future Enhancements

* Real-time NAV Monitoring
* Streamlit Web Application
* Cloud Deployment
* Automated ETL Scheduling
* Portfolio Optimization Engine
* Monte Carlo Simulation
* AI-powered Fund Recommendation System

---

# Author

Shivanand Metri

PGDM – Finance & Business Analytics

M.S. Ramaiah Institute of Management

GitHub:
https://github.com/shivanandmetri03
