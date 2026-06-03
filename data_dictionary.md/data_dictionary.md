# Data Dictionary

## Project: Bluestock Mutual Fund Analytics

### Source Files

| File Name                       | Description                                        |
| ------------------------------- | -------------------------------------------------- |
| nav_history_clean.csv           | Historical NAV records of mutual fund schemes      |
| investor_transactions_clean.csv | Investor purchase, SIP and redemption transactions |
| scheme_performance_clean.csv    | Scheme performance metrics and fund details        |

---

# Table: dim_fund

| Column Name | Data Type | Business Definition                               | Source                       |
| ----------- | --------- | ------------------------------------------------- | ---------------------------- |
| amfi_code   | INTEGER   | Unique AMFI code identifying a mutual fund scheme | scheme_performance_clean.csv |
| scheme_name | TEXT      | Name of mutual fund scheme                        | scheme_performance_clean.csv |
| fund_house  | TEXT      | Asset Management Company (AMC)                    | scheme_performance_clean.csv |
| category    | TEXT      | Fund category (Equity, Debt, Hybrid etc.)         | scheme_performance_clean.csv |
| plan        | TEXT      | Direct or Regular plan type                       | scheme_performance_clean.csv |

---

# Table: dim_date

| Column Name | Data Type | Business Definition              | Source                                                  |
| ----------- | --------- | -------------------------------- | ------------------------------------------------------- |
| date_id     | INTEGER   | Surrogate key for date dimension | Generated                                               |
| full_date   | DATE      | Calendar date                    | nav_history_clean.csv / investor_transactions_clean.csv |
| year        | INTEGER   | Calendar year                    | Generated                                               |
| quarter     | INTEGER   | Calendar quarter                 | Generated                                               |
| month       | INTEGER   | Calendar month                   | Generated                                               |
| day         | INTEGER   | Day of month                     | Generated                                               |

---

# Table: fact_nav

| Column Name | Data Type | Business Definition           | Source                |
| ----------- | --------- | ----------------------------- | --------------------- |
| amfi_code   | INTEGER   | Mutual fund scheme identifier | nav_history_clean.csv |
| date        | DATE      | NAV reporting date            | nav_history_clean.csv |
| nav         | FLOAT     | Net Asset Value per unit      | nav_history_clean.csv |

---

# Table: fact_transactions

| Column Name      | Data Type | Business Definition                  | Source                          |
| ---------------- | --------- | ------------------------------------ | ------------------------------- |
| transaction_date | DATE      | Transaction execution date           | investor_transactions_clean.csv |
| transaction_type | TEXT      | SIP, Lumpsum, or Redemption          | investor_transactions_clean.csv |
| amount           | FLOAT     | Transaction amount invested/redeemed | investor_transactions_clean.csv |
| investor_id      | INTEGER   | Unique investor identifier           | investor_transactions_clean.csv |
| kyc_status       | TEXT      | Investor KYC verification status     | investor_transactions_clean.csv |

---

# Table: fact_performance

| Column Name   | Data Type | Business Definition               | Source                       |
| ------------- | --------- | --------------------------------- | ---------------------------- |
| amfi_code     | INTEGER   | Mutual fund scheme identifier     | scheme_performance_clean.csv |
| scheme_name   | TEXT      | Scheme name                       | scheme_performance_clean.csv |
| category      | TEXT      | Fund category                     | scheme_performance_clean.csv |
| expense_ratio | FLOAT     | Annual expense ratio (%)          | scheme_performance_clean.csv |
| aum_crore     | FLOAT     | Assets Under Management in Crores | scheme_performance_clean.csv |

---

# Table: fact_aum

| Column Name | Data Type | Business Definition               | Source                       |
| ----------- | --------- | --------------------------------- | ---------------------------- |
| amfi_code   | INTEGER   | Mutual fund scheme identifier     | scheme_performance_clean.csv |
| aum_crore   | FLOAT     | Assets Under Management in Crores | scheme_performance_clean.csv |

---

## Data Quality Checks Performed

1. Parsed date columns into datetime format.
2. Removed duplicate records.
3. Forward-filled missing NAV values.
4. Validated NAV values greater than zero.
5. Standardized transaction types.
6. Validated transaction amount greater than zero.
7. Checked KYC status values.
8. Converted performance metrics to numeric values.
9. Validated expense ratio range (0.1%–2.5%).
10. Loaded cleaned datasets into SQLite database.

---

## Database

Database Name: bluestock_mf.db

Database Type: SQLite

Schema Type: Star Schema
