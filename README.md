# Procurement Cost Optimization Analytics

## Overview
This project focuses on analyzing procurement operations to identify supplier inefficiencies, procurement savings opportunities, delivery performance issues, and cost optimization strategies using Python, SQL, and Power BI.

The analysis helps uncover actionable business insights related to:
- Supplier pricing
- Negotiation effectiveness
- Procurement spending
- Delivery efficiency
- Product quality
- Vendor compliance

---

# Business Problem

Organizations often experience rising procurement costs without clear visibility into:
- Overpriced suppliers
- Poor negotiation strategies
- Vendor quality issues
- Delivery delays
- Procurement spending trends

The goal of this project is to analyze procurement data and identify opportunities to reduce procurement costs while improving supplier performance and operational efficiency.

---

# Dataset

Dataset Used:
- Procurement KPI Analysis Dataset

Dataset Source:
- Kaggle

The dataset contains:
- Purchase Orders
- Supplier Information
- Unit Pricing
- Negotiated Pricing
- Delivery Details
- Defective Units
- Compliance Information

---

# Tech Stack

| Tool | Purpose |
|---|---|
| Python | Data cleaning and analysis |
| Pandas | Data manipulation |
| SQL (SQLite) | KPI querying and reporting |
| Power BI | Dashboard visualization |
| VS Code | Development environment |
| Git & GitHub | Version control |

---

# Project Structure

```bash
Procurement-Cost-Optimization/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── notebooks/
│   └── procurement_analysis.ipynb
│
├── sql/
│   ├── procurement.db
│   └── queries.sql
│
├── dashboard/
│
├── screenshots/
│
├── app.py
│
└── README.md
```

---

# Data Cleaning Process

The raw procurement dataset contained:
- Missing delivery dates
- Missing defect information
- Inconsistent date formatting
- Null values

Cleaning steps performed:
- Converted date columns into datetime format
- Handled missing values
- Filled missing defect counts with 0
- Generated calculated business metrics
- Created additional analytical columns

---

# Feature Engineering

Additional metrics created during analysis:

| Metric | Description |
|---|---|
| Delivery_Days | Delivery lead time |
| Savings_Per_Unit | Difference between unit and negotiated price |
| Total_Savings | Procurement savings achieved |
| Defect_Rate | Percentage of defective units |
| Negotiated_Cost | Final procurement spend |
| Quarter | Procurement quarter |
| Month | Monthly procurement trend |

---

# SQL Analysis

SQL was used to generate procurement KPIs and supplier insights.

Key SQL analyses performed:
- Total procurement spend
- Supplier-wise spend analysis
- Negotiation savings analysis
- Average delivery performance
- Defect rate analysis
- Monthly procurement trends
- Compliance analysis

Example SQL Query:

```sql
SELECT 
Supplier,
SUM(Quantity * Negotiated_Price) AS TotalSpend
FROM procurement
GROUP BY Supplier
ORDER BY TotalSpend DESC;
```

---

# Exploratory Data Analysis (EDA)

The analysis focused on:

## Supplier Performance
- Supplier spend distribution
- Pricing comparison
- Negotiation effectiveness
- Delivery efficiency
- Compliance tracking

## Procurement Efficiency
- Order status trends
- Cancellation analysis
- Category-wise procurement spend
- Seasonal procurement trends

## Product Quality
- Supplier defect rates
- Quality comparison across vendors

---

# Key Insights

## Procurement Savings
- Negotiated pricing generated significant procurement savings.
- Certain suppliers consistently offered better negotiated rates.

## Supplier Performance
- Some suppliers demonstrated lower delivery lead times and better compliance.
- High defect rates identified quality concerns for selected vendors.

## Procurement Optimization Opportunities
- Consolidating procurement with high-performing suppliers could reduce costs.
- Better procurement planning can reduce seasonal spending spikes.
- Vendor rationalization can improve operational efficiency.

---

# Business Recommendations

## Recommendation 1
Increase procurement allocation toward suppliers with:
- Lower negotiated pricing
- Better compliance
- Faster delivery performance

## Recommendation 2
Reduce dependency on suppliers with consistently high defect rates.

## Recommendation 3
Improve procurement planning during seasonal demand spikes.

## Recommendation 4
Strengthen negotiation strategies to maximize procurement savings.

---

# Estimated Business Impact

The analysis suggests that:
- Supplier optimization
- Better procurement planning
- Improved negotiation strategies

could potentially reduce procurement costs by approximately 12–15%.

---

# Dashboard

The Power BI dashboard includes:

## Executive Dashboard
- Total Spend
- Total Savings
- Average Delivery Time
- Compliance Rate

## Supplier Intelligence Dashboard
- Supplier Ranking
- Delivery Performance
- Defect Analysis
- Supplier Spend Comparison

## Procurement Optimization Dashboard
- Savings Analysis
- Monthly Spend Trends
- Procurement Category Analysis

---

# Future Improvements

Potential enhancements for this project:
- Supplier scoring model
- Procurement forecasting using machine learning
- Automated procurement alerts
- Predictive delivery delay analysis
- Advanced spend analytics

---

# Resume Bullet

Developed a procurement cost optimization analytics solution using Python, SQL, and Power BI to identify supplier inefficiencies, negotiation savings opportunities, delivery performance issues, and procurement trends, uncovering potential annual cost savings of approximately 12–15%.

---

# Author

Dushyant Mahto
