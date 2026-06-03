-- =====================================================
-- Query 1: Top 5 Funds by AUM
-- =====================================================

SELECT
amfi_code,
MAX(aum_crore) AS max_aum
FROM fact_aum
GROUP BY amfi_code
ORDER BY max_aum DESC
LIMIT 5;

-- =====================================================
-- Query 2: Average NAV by Fund
-- =====================================================

SELECT
amfi_code,
AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY amfi_code
ORDER BY avg_nav DESC;

-- =====================================================
-- Query 3: Highest NAV by Fund
-- =====================================================

SELECT
amfi_code,
MAX(nav) AS highest_nav
FROM fact_nav
GROUP BY amfi_code
ORDER BY highest_nav DESC
LIMIT 10;

-- =====================================================
-- Query 4: Lowest NAV by Fund
-- =====================================================

SELECT
amfi_code,
MIN(nav) AS lowest_nav
FROM fact_nav
GROUP BY amfi_code
ORDER BY lowest_nav ASC
LIMIT 10;

-- =====================================================
-- Query 5: Transaction Count by Type
-- =====================================================

SELECT
transaction_type,
COUNT(*) AS total_transactions
FROM fact_transactions
GROUP BY transaction_type
ORDER BY total_transactions DESC;

-- =====================================================
-- Query 6: Total Amount by Transaction Type
-- =====================================================

SELECT
transaction_type,
SUM(amount) AS total_amount
FROM fact_transactions
GROUP BY transaction_type
ORDER BY total_amount DESC;

-- =====================================================
-- Query 7: Funds with Expense Ratio Below 1%
-- =====================================================

SELECT
scheme_name,
expense_ratio
FROM fact_performance
WHERE expense_ratio < 1
ORDER BY expense_ratio;

-- =====================================================
-- Query 8: Average Expense Ratio by Category
-- =====================================================

SELECT
category,
AVG(expense_ratio) AS avg_expense_ratio
FROM fact_performance
GROUP BY category
ORDER BY avg_expense_ratio;

-- =====================================================
-- Query 9: Fund Count by Fund House
-- =====================================================

SELECT
fund_house,
COUNT(*) AS total_funds
FROM dim_fund
GROUP BY fund_house
ORDER BY total_funds DESC;

-- =====================================================
-- Query 10: Fund Count by Category
-- =====================================================

SELECT
category,
COUNT(*) AS total_funds
FROM dim_fund
GROUP BY category
ORDER BY total_funds DESC;
