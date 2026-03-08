# Gravity Books Sales Data Warehouse

[cite_start]A comprehensive End-to-End Data Engineering project that transforms raw transactional (OLTP) bookstore data into an analytics-ready Data Warehouse (OLAP) using a Star Schema dimensional model[cite: 1, 2].

## 📌 Project Overview
[cite_start]The **Gravity Books Data Warehouse** is designed to solve common operational reporting issues such as slow query performance, inconsistent calculations, and the lack of historical tracking[cite: 3, 4]. [cite_start]It centralizes business logic to provide a "Single Source of Truth" for the organization[cite: 4].

### Key Objectives:
* [cite_start]**Clean & Standardize:** Transform raw sales, customer, and product data into structured formats[cite: 4].
* [cite_start]**Historical Tracking:** Implement Slowly Changing Dimensions (SCD Type 2) to track changes in customer and address information[cite: 10, 11, 22].
* [cite_start]**Performance Optimization:** Use a Star Schema to support high-speed analytical querying[cite: 7, 9].
* [cite_start]**Business Intelligence:** Enable data-driven decision-making for finance and sales management teams.

---

## 🏗️ System Architecture
[cite_start]The project utilizes a multi-layer storage approach to ensure data integrity and performance[cite: 6, 7].

1.  [cite_start]**Layer 1 - Source (OLTP):** Normalized transactional schema containing core tables like `customer`, `cust_order`, and `book`[cite: 5, 7].
2.  [cite_start]**Layer 2 - Staging:** Temporary transformation tables used for data cleansing[cite: 7, 8].
3.  [cite_start]**Layer 3 - Data Warehouse (Star Schema):** The final analytical layer optimized for BI tools[cite: 7].

### Data Model (Star Schema)
* [cite_start]**Fact Table:** `Sales_fact` (Grains: One record per order line)[cite: 13, 14].
* **Dimensions:**
    * [cite_start]`Customer_dim` & `Address_dim` (SCD Type 2)[cite: 10, 11].
    * [cite_start]`Book_dim`, `Author_dim`, `Date_dim`, `ShippingMethod_dim`, and `OrderStatus_dim`[cite: 7, 11, 13].
    * [cite_start]`Bridge_Book_Author`: Resolves many-to-many relationships between books and authors[cite: 12, 19].

---

## 🛠️ Tech Stack & Tools
* [cite_start]**Database:** SQL Server (T-SQL) for storage and transformations[cite: 6].
* [cite_start]**ETL Tool:** SQL Server Integration Services (SSIS) for batch processing and daily incremental loads[cite: 5, 6].
* [cite_start]**Modeling:** Star Schema / Dimensional Modeling[cite: 7].
* [cite_start]**Visualization:** Power BI for interactive dashboards and reporting.

---

## 📂 Repository Structure
```text
│   README.md
├───Database Backup
│       gravity_books.bak               # Full SQL Server database backup
├───Diagrams
│       Gravity Books - Data Modeling.png # Star Schema ERD diagram
├───Dimensions
│       *.sql                            # SQL scripts for dimension definitions
├───Documents
│       Project Documentation.pdf        # Technical specifications and data catalog
├───Fact
│       Sales_fact.sql                   # SQL scripts for the Fact table
├───Power BI
│       gravity_books - PowerBI.pbix     # Power BI Dashboard file
└───SSIS
    └───SSIS Project                     # SSIS solution, packages, and parameters