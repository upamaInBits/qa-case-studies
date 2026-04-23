# Validation Tests – Northwind Database

## Objective
To verify that the Northwind database contains consistent, complete, and logically valid data.

---

## 1. Data Completeness Check
Verified that key fields such as customer names, order dates, product names, and unit prices are populated and not null.

## 2. Duplicate Record Check
Checked for duplicate primary identifiers such as CustomerID, ProductID, and OrderID.

## 3. Relationship Integrity Check
Validated that records in child tables correctly reference existing records in parent tables.

Examples:
- Orders should reference valid customers
- Order details should reference valid orders and products

## 4. Business Logic Validation
Tested whether stored data follows expected business rules.

Examples:
- ShippedDate should not be earlier than OrderDate
- UnitPrice should not be negative
- Quantity should be greater than zero

## 5. Aggregate Validation
Used grouped queries to validate counts and summaries across tables.

Examples:
- Number of orders per customer
- Products with no orders
- Customers with no orders

## Summary
These validation checks were used to identify anomalies, verify data quality, and confirm that relationships and business rules were maintained in the database.
