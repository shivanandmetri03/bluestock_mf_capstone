CREATE TABLE dim_fund (
    amfi_code BIGINT,
    scheme_name VARCHAR(500),
    fund_house VARCHAR(300),
    category VARCHAR(200),
    plan VARCHAR(100)
);

CREATE TABLE dim_date (
    date_id INTEGER,
    full_date DATE,
    year INTEGER,
    quarter INTEGER,
    month INTEGER,
    day INTEGER
);

CREATE TABLE fact_aum (
    amfi_code BIGINT,
    aum_crore NUMERIC(18,2)
);

CREATE TABLE fact_nav (
    amfi_code BIGINT,
    date DATE,
    nav NUMERIC(12,4)
);

CREATE TABLE fact_transactions (
    transaction_date DATE
);

CREATE TABLE fact_performance (
    amfi_code BIGINT,
    aum_crore NUMERIC(18,2)
);

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';

SELECT COUNT(*) FROM dim_fund;
SELECT COUNT(*)FROM dim_date;
SELECT COUNT(*) FROM fact_aum;

-- =====================================
-- Query 1: Total Number of Funds
-- =====================================

SELECT COUNT(*) AS total_funds
FROM dim_fund;


-- =====================================
-- Query 2: Funds by Category
-- =====================================

SELECT
    category,
    COUNT(*) AS fund_count
FROM dim_fund
GROUP BY category
ORDER BY fund_count DESC;


-- =====================================
-- Query 3: Top 10 Funds by AUM
-- =====================================

SELECT
    amfi_code,
    aum_crore
FROM fact_aum
ORDER BY aum_crore DESC
LIMIT 10;


-- =====================================
-- Query 4: Average AUM Across Funds
-- =====================================

SELECT
    ROUND(AVG(aum_crore), 2) AS avg_aum
FROM fact_aum;


-- =====================================
-- Query 5: Highest AUM Fund
-- =====================================

SELECT
    amfi_code,
    aum_crore
FROM fact_aum
ORDER BY aum_crore DESC
LIMIT 1;


-- =====================================
-- Query 6: Lowest AUM Fund
-- =====================================

SELECT
    amfi_code,
    aum_crore
FROM fact_aum
ORDER BY aum_crore ASC
LIMIT 1;


-- =====================================
-- Query 7: Total NAV Records
-- =====================================

SELECT COUNT(*) AS total_nav_records
FROM fact_nav;


-- =====================================
-- Query 8: Latest NAV Date
-- =====================================

SELECT MAX(date) AS latest_nav_date
FROM fact_nav;


-- =====================================
-- Query 9: Fund House Wise Fund Count
-- =====================================

SELECT
    fund_house,
    COUNT(*) AS total_funds
FROM dim_fund
GROUP BY fund_house
ORDER BY total_funds DESC;


-- =====================================
-- Query 10: Top Funds with AUM Details
-- =====================================

SELECT
    d.scheme_name,
    d.fund_house,
    d.category,
    a.aum_crore
FROM dim_fund d
JOIN fact_aum a
    ON d.amfi_code = a.amfi_code
ORDER BY a.aum_crore DESC
LIMIT 10;


-- =====================================
-- Query 11: Category Wise Average AUM
-- =====================================

SELECT
    d.category,
    ROUND(AVG(a.aum_crore), 2) AS avg_aum
FROM dim_fund d
JOIN fact_aum a
    ON d.amfi_code = a.amfi_code
GROUP BY d.category
ORDER BY avg_aum DESC;


-- =====================================
-- Query 12: Total Fund Houses
-- =====================================

SELECT
    COUNT(DISTINCT fund_house) AS total_fund_houses
FROM dim_fund;


-- =====================================
-- Query 13: Distinct Categories
-- =====================================

SELECT
    COUNT(DISTINCT category) AS total_categories
FROM dim_fund;


-- =====================================
-- Query 14: Top 5 Fund Houses by Number of Schemes
-- =====================================

SELECT
    fund_house,
    COUNT(*) AS scheme_count
FROM dim_fund
GROUP BY fund_house
ORDER BY scheme_count DESC
LIMIT 5;


-- =====================================
-- Query 15: Database Health Check
-- =====================================

SELECT 'dim_fund' AS table_name, COUNT(*) AS rows FROM dim_fund
UNION ALL
SELECT 'dim_date', COUNT(*) FROM dim_date
UNION ALL
SELECT 'fact_aum', COUNT(*) FROM fact_aum
UNION ALL
SELECT 'fact_nav', COUNT(*) FROM fact_nav
UNION ALL
SELECT 'fact_transactions', COUNT(*) FROM fact_transactions
UNION ALL
SELECT 'fact_performance', COUNT(*) FROM fact_performance;