-- ==========================================
-- DIMENSION TABLES
-- ==========================================

CREATE TABLE dim_fund (
    amfi_code INTEGER PRIMARY KEY,
    scheme_name TEXT,
    fund_house TEXT,
    category TEXT,
    plan TEXT
);

CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY,
    full_date DATE,
    year INTEGER,
    quarter INTEGER,
    month INTEGER,
    day INTEGER
);

-- ==========================================
-- FACT TABLES
-- ==========================================

CREATE TABLE fact_nav (
    amfi_code INTEGER,
    date DATE,
    nav REAL,
    FOREIGN KEY (amfi_code)
        REFERENCES dim_fund(amfi_code)
);

CREATE TABLE fact_transactions (
    investor_id INTEGER,
    transaction_date DATE,
    transaction_type TEXT,
    amount REAL,
    kyc_status TEXT
);

CREATE TABLE fact_performance (
    amfi_code INTEGER,
    scheme_name TEXT,
    category TEXT,
    expense_ratio REAL,
    aum_crore REAL,
    FOREIGN KEY (amfi_code)
        REFERENCES dim_fund(amfi_code)
);

CREATE TABLE fact_aum (
    amfi_code INTEGER,
    aum_crore REAL,
    FOREIGN KEY (amfi_code)
        REFERENCES dim_fund(amfi_code)
);