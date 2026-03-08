# Gravity Books Sales Data Warehouse

A comprehensive end-to-end Data Engineering project that transforms raw transactional (OLTP) bookstore data into an analytics-ready Data Warehouse (OLAP) using a Star Schema dimensional model.

---

## 📌 Project Overview

The **Gravity Books Data Warehouse** is designed to solve common operational reporting issues such as slow query performance, inconsistent calculations, and the lack of historical tracking. It centralizes business logic to provide a **Single Source of Truth** for the organization.

### Key Objectives

- **Clean & Standardize** — Transform raw sales, customer, and product data into structured formats.
- **Historical Tracking** — Implement Slowly Changing Dimensions (SCD Type 2) to track changes in customer and address information.
- **Performance Optimization** — Use a Star Schema to support high-speed analytical querying.
- **Business Intelligence** — Enable data-driven decision-making for finance and sales management teams.

---

## 🏗️ System Architecture

The project uses a multi-layer storage approach to ensure data integrity and performance.

| Layer | Name | Description |
|-------|------|-------------|
| 1 | **Source (OLTP)** | Normalized transactional schema with core tables: `customer`, `cust_order`, `book` |
| 2 | **Staging** | Temporary transformation tables used for data cleansing |
| 3 | **Data Warehouse (OLAP)** | Final analytical layer built as a Star Schema, optimized for BI tools |

### Data Model — Star Schema

**Fact Table**
- `Sales_fact` — Grain: one record per order line item.

**Dimension Tables**

| Table | Notes |
|-------|-------|
| `Customer_dim` | SCD Type 2 |
| `Address_dim` | SCD Type 2 |
| `Book_dim` | |
| `Author_dim` | |
| `Date_dim` | |
| `ShippingMethod_dim` | |
| `OrderStatus_dim` | |
| `Bridge_Book_Author` | Resolves the many-to-many relationship between books and authors |

---

## 🛠️ Tech Stack

| Component | Technology |
|-----------|------------|
| Database | SQL Server (T-SQL) |
| ETL | SQL Server Integration Services (SSIS) |
| Modeling | Star Schema / Dimensional Modeling |
| Visualization | Power BI |

---

## 📂 Repository Structure

```
Gravity-Books-DWH/
│
├── README.md
│
├── Database Backup/
│   └── gravity_books.bak           # Full SQL Server database backup
│
├── Diagrams/
│   └── Gravity Books - Data Modeling.png  # Star Schema ERD
│
├── Dimensions/
│   └── *.sql                       # SQL scripts for all dimension tables
│
├── Documents/
│   └── Project Documentation.pdf  # Technical specs and data catalog
│
├── Fact/
│   └── Sales_fact.sql              # SQL script for the fact table
│
├── Power BI/
│   └── gravity_books - PowerBI.pbix  # Interactive dashboard file
│
└── SSIS/
    └── SSIS Project/               # SSIS solution, packages, and parameters
```

---

## 🚀 Getting Started

1. **Restore the database** — Use `Database Backup/gravity_books.bak` to restore the source OLTP database in SQL Server.
2. **Run dimension scripts** — Execute the SQL scripts in `Dimensions/` to build all dimension tables.
3. **Run the fact script** — Execute `Fact/Sales_fact.sql` to populate the fact table.
4. **Deploy SSIS packages** — Open the SSIS project in Visual Studio and configure connection parameters for your environment.
5. **Connect Power BI** — Open `gravity_books - PowerBI.pbix` and point it to your SQL Server instance.

---

## 📄 Documentation

Full technical specifications, data dictionary, and ETL mapping details are available in [`Documents/Project Documentation.pdf`](Documents/Project%20Documentation.pdf).
