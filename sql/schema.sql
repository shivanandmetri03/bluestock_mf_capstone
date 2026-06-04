-- =====================================
-- BlueStock Mutual Fund Capstone
-- Database Schema
-- =====================================

-- =====================================
-- Table: dim_fund
-- =====================================

CREATE TABLE dim_fund (
    amfi_code BIGINT,
    scheme_name VARCHAR(500),
    fund_house VARCHAR(300),
    category VARCHAR(200),
    plan VARCHAR(100)
);


-- =====================================
-- Table: dim_date
-- =====================================

CREATE TABLE dim_date (
    date_id INTEGER,
    full_date DATE,
    year INTEGER,
    quarter INTEGER,
    month INTEGER,
    day INTEGER
);


-- =====================================
-- Table: fact_aum
-- =====================================

CREATE TABLE fact_aum (
    amfi_code BIGINT,
    aum_crore NUMERIC(18,2)
);


-- =====================================
-- Table: fact_nav
-- =====================================

CREATE TABLE fact_nav (
    amfi_code BIGINT,
    date DATE,
    nav NUMERIC(12,4)
);


-- =====================================
-- Table: fact_transactions
-- =====================================

CREATE TABLE fact_transactions (
    transaction_id BIGINT,
    amfi_code BIGINT,
    transaction_date DATE,
    transaction_type VARCHAR(50),
    amount NUMERIC(18,2)
);


-- =====================================
-- Table: fact_performance
-- =====================================

CREATE TABLE fact_performance (
    amfi_code BIGINT,
    scheme_name VARCHAR(500),
    category VARCHAR(200),
    aum_crore NUMERIC(18,2)
);