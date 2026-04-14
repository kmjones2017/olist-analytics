# Olist Analytics Engineering Project

End-to-end analytics engineering project using **dbt + Snowflake** on the Olist e-commerce dataset.

This project transforms raw transactional data into a **production-style star schema** and delivers business insights through interactive dashboards.

---

# Project Overview

- Built a modular data pipeline using **dbt (staging → intermediate → marts)**
- Modeled a **star schema** to support analytics use cases
- Implemented **data quality and business logic tests**
- Developed **interactive dashboards in Tableau** to analyze:
  - Revenue trends
  - Customer behavior
  - Product performance
  - Delivery operations

---

# Data Architecture

### Layers:

- **Staging**
  - Source-aligned models
  - Data cleaning and standardization

- **Intermediate**
  - Business logic transformations
  - Fact grain alignment (order-item level)

- **Marts**
  - Star schema:
    - `fct_order_items`
    - `dim_customers`
    - `dim_products`
    - `dim_sellers`

---
## Data Model Evolution

### Raw / Source Schema

<img width="1919" height="1602" alt="original schema" src="https://github.com/user-attachments/assets/81f1416f-373f-40c7-b5b5-bf9f31bd6ee3" />

- Raw transactional dataset with multiple normalized tables
- Contains inconsistencies and limited analytical usability
- Serves as the foundation for staging transformations

---

### Analytics / Star Schema

<img width="1496" height="1190" alt="star schema" src="https://github.com/user-attachments/assets/28395561-2913-46de-bce6-66fc2ed4d04f" />

- Transformed into a star schema for analytical querying
- Fact table at **order-item grain**
- Dimension tables provide descriptive context (customers, products, sellers)
- Optimized for BI tools and dashboard performance
  
---
# Data Quality & Testing

Implemented robust testing to ensure data reliability:

- `not_null` and `unique` constraints
- `relationships` (foreign key integrity)
- `accepted_values` (categorical validation)
- Custom business logic tests:
  - Delivered orders must have delivery timestamps
  - Freight values must not be negative
  - Item price must not be negative
  - Delivery dates must occur after the purchase timestamps 

---

# Dashboards

**Interactive Dashboards (Tableau Public):**  
[[Tableau Public Link]](https://public.tableau.com/app/profile/kayla.jones8313/viz/OlistMarketplace_17761158254000/Overview)

---

## Executive Overview

<img width="1355" height="770" alt="image" src="https://github.com/user-attachments/assets/d20f58e7-b265-4bba-b972-f53e55cc90e2" />

- Tracks revenue and order trends over time  
- Displays key KPIs (revenue, orders, customers, AOV)  
- Enables filtering by region and product category  

---

## Customer Behavior

<img width="1363" height="766" alt="image" src="https://github.com/user-attachments/assets/d220f476-93ce-4baf-97d3-2694e77324d8" />

- Analyzes repeat vs one-time customers  
- Shows distribution of orders per customer  
- Highlights low customer retention  

---

## Product Performance

<img width="1364" height="766" alt="image" src="https://github.com/user-attachments/assets/8be6aa75-7bde-4ada-b992-5133523dffdd" />

- Identifies top product categories by revenue  
- Compares sales volume vs revenue contribution  
- Highlights pricing impact on performance  

---

## Operations & Fulfillment

<img width="1363" height="763" alt="image" src="https://github.com/user-attachments/assets/60504b0c-2529-4d56-9883-0b35bb9f2e76" />

- Measures delivery performance across regions and sellers  
- Tracks delivery delays and approval timing  
- Compares estimated vs actual delivery times  
---

# Key Insights

- Revenue is concentrated in a small number of product categories
- Most customers are **one-time buyers** (low retention)
- Delivery performance varies significantly by region and seller
- Estimated delivery times often differ from actual delivery times

---

# Tech Stack

- **dbt** – data modeling and transformations  
- **Snowflake** – cloud data warehouse  
- **Tableau** – data visualization  
- **SQL** – core transformation logic  

---

# Future Improvements

- Incorporate payments and reviews data into marts layer
- Add geolocation-based analysis
- Implement orchestration (e.g., Airflow) for scheduled pipelines
- Expand metrics layer for BI tools

---

# Notes

- Dataset is static (Kaggle Olist dataset)
- Project focuses on **analytics engineering best practices**, not pipeline automation

---

# Author

Kayla Jones  
