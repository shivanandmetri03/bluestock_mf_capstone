# bluestock_mf_capstone

Mutual Fund Data Engineering Capstone Project

## Project Overview

This project is an end-to-end Mutual Fund Data Engineering and Analytics capstone designed to simulate a real-world financial data pipeline and analytical workflow.

It focuses on building a complete ETL pipeline + data warehouse + SQL analytics layer for mutual fund datasets.

The project focuses on:

* Data ingestion
* Data cleaning and validation
* SQLite data warehousing
* SQL analytics
* Mutual fund performance analysis
* ETL pipeline development
* Portfolio-ready data engineering practices

---

## Tech Stack

* Python
* Pandas
* SQLAlchemy
* SQLite
* SQL
* Git & GitHub
* Power BI (Upcoming)

---

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
│   ├── load_sqlite.py
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
## Key Features

### Data Cleaning

* Standardized date formats
* Removed duplicates
* Validated NAV values
* Standardized transaction types
* Checked expense ratio ranges
* Handled missing values

### Data Warehouse Design

Implemented SQLite Star Schema:

* dim_fund
* dim_date
* fact_nav
* fact_transactions
* fact_performance
* fact_aum

### SQL Analytics

Created analytical SQL queries for:

* Top funds by AUM
* Monthly NAV analysis
* SIP growth trends
* State-wise transactions
* Expense ratio analysis
* Return comparisons

---

## Database

SQLite database file:

```bash
database/bluestock_mf.db
```

---

## Setup Instructions

### Clone Repository

```bash
git clone https://github.com/shivanandmetri03/bluestock_mf_capstone.git
```

### Install Dependencies

```bash
pip install -r requirements.txt
```

### Run Cleaning Scripts

```bash
python scripts/clean_nav_history.py
python scripts/clean_transactions.py
python scripts/clean_performance.py
```

### Load Data into PostgreSQL

```bash
python scripts/load_postgres.py
```

---

## Deliverables

* Cleaned datasets
* SQLite database
* SQL schema
* Analytical SQL queries
* Data dictionary
* ETL scripts
* GitHub repository

---

## Future Enhancements

* Power BI Dashboard
* Streamlit Web App
* Automated ETL Scheduling
* Cloud Deployment
* API Integration
* Advanced Financial KPIs

---

## Author

Shivanand Metri

GitHub:
https://github.com/shivanandmetri03

