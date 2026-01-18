# SQL Practice Problems Book

This folder contains curated SQL solutions derived from a structured
SQL practice problems book using a Northwind-style relational database.

Queries are consolidated into **final, clean solutions** and organized
by difficulty level.

---

## Structure
sql_practice_problems_book/
├── introductory/
│ └── queries.sql
├── intermediate/
│ └── queries.sql
├── advanced/
│ └── queries.sql
└── README.md



## Difficulty Levels

### Introductory
Covers foundational SQL concepts, including:

- Basic `SELECT` statements
- Filtering with `WHERE`, `IN`, and `LIKE`
- Sorting with `ORDER BY`
- Column expressions and aliases
- Aggregate functions (`COUNT`, `MIN`)
- `GROUP BY`
- Simple `INNER JOIN`s

---

### Intermediate
Builds on the fundamentals and includes:

- Multi-column aggregation
- Conditional ordering with `CASE`
- Inventory and reorder logic
- Date filtering using fixed ranges
- Rolling time-window queries
- Use of variables and date functions
- Multi-table joins
- `LEFT JOIN` patterns for missing data
- Identifying non-existent relationships using `NULL` checks

---

### Advanced (In Progress)

---

## Database Assumptions

Queries assume a normalized relational schema similar to the
Northwind sample database, including tables such as:

- `Customers`
- `Orders`
- `OrderDetails`
- `Products`
- `Employees`
- `Suppliers`
- `Categories`
- `Shippers`

Queries are written using **SQL Server / T-SQL–style syntax**.

---

## Purpose

This folder exists to:
- Demonstrate structured SQL problem solving
- Show progression from introductory to advanced SQL
- Serve as a reference for common SQL query patterns

It is intentionally curated and does not include raw experimentation,
temporary files, or per-problem submissions.