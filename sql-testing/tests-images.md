# Validation Tests – Northwind Database

## Objective
To verify that the Northwind database contains consistent, complete, and logically valid data.

## Checked Sample data 

<img width="1465" height="1105" alt="{F2D4A3A7-CF37-46CD-87B5-FB4A8A3C95C4}" src="https://github.com/user-attachments/assets/a8042cc0-c961-4524-afbe-d5a2cb08e68c" />

---
<img width="1454" height="1084" alt="{D9339DC9-93F5-4776-8D65-1388F83B13F8}" src="https://github.com/user-attachments/assets/107a7986-b11e-4b65-8a7a-cdaeee68c8a7" />

---

<img width="1449" height="1093" alt="{00E09E49-7381-42D3-8C2E-DF9C000538A4}" src="https://github.com/user-attachments/assets/a5639d82-71db-4681-88b9-31c88d98cb30" />

---
<img width="1437" height="1095" alt="{10C29FB2-1788-4819-9CE6-BEE63B39EB30}" src="https://github.com/user-attachments/assets/049359d9-9e11-4093-9d6c-dc5d3dedfde7" />

---


## 1. Data Completeness Check
Verified that key fields such as customer names, order dates, product names, and unit prices are populated and not null.

<img width="1052" height="565" alt="{5AE392CD-8FC2-482A-858F-CFD23F833587}" src="https://github.com/user-attachments/assets/0dafaa3b-b5f9-4698-a235-9fab150f095c" />

---
<img width="1057" height="328" alt="{BB92862A-A318-444A-B212-DEED074F25F4}" src="https://github.com/user-attachments/assets/d0c908c0-23ae-43c6-80a7-196f1e857506" />

---
<img width="1043" height="499" alt="{19BE06EF-5361-46D5-9101-4C7BAFD1FE03}" src="https://github.com/user-attachments/assets/6efe46e7-d34f-4597-919e-39da1e60a308" />

---
<img width="1032" height="534" alt="{6572EC51-2B67-4C9A-85E6-B3E0F4C9EC6A}" src="https://github.com/user-attachments/assets/0ba42e78-978a-4f06-8738-fb2c98239236" />

---
<img width="1011" height="585" alt="{E7AECE4F-8DB3-411E-B85C-2AE04496E41D}" src="https://github.com/user-attachments/assets/fe4e95ec-6803-4291-9d57-449db544b036" />




## 2. Duplicate Record Check
Checked for duplicate primary identifiers such as CustomerID, ProductID, and OrderID.
<img width="1033" height="496" alt="{2F4E2742-8F37-4984-ADEB-C0F40F910734}" src="https://github.com/user-attachments/assets/ec11f2d0-b60f-4bc2-bd0e-15fb49233cb1" />

---
<img width="1048" height="509" alt="{2AB7D43A-64FC-457D-8E2E-405AA5A0C81C}" src="https://github.com/user-attachments/assets/32c88354-962a-4384-9362-8e59f66712b5" />

---
<img width="1046" height="536" alt="{DF978B26-2A85-42C1-B05C-C7AF632905A6}" src="https://github.com/user-attachments/assets/c172920c-819d-4633-bd63-d7aa8a712e6c" />


## 3. Relationship Integrity Check
Validated that records in child tables correctly reference existing records in parent tables.

Examples:
- Orders should reference valid customers
  <img width="1037" height="417" alt="{D2AE1126-D0DF-49AD-A665-4EA53F2D3651}" src="https://github.com/user-attachments/assets/8faf4295-ffd0-4f57-a03f-265fd667323d" />

  ---

- Order details should reference valid orders and products

<img width="1047" height="498" alt="{28FEA31B-3E40-4DE8-A112-28D97F454F1E}" src="https://github.com/user-attachments/assets/2ded32be-d8d5-4478-a2c9-deb52d7c3bf5" />

---
<img width="1037" height="467" alt="{6E3395BE-AADF-4D07-B226-BEE2EBA4ED1F}" src="https://github.com/user-attachments/assets/b26bc1e3-e247-4385-aa66-8a0f49756204" />

---
<img width="1039" height="500" alt="{2B6839CD-397C-41AB-B4AF-18AB4F6D21B7}" src="https://github.com/user-attachments/assets/c5db2c4f-27c3-4f54-bbae-a2a7f9c7c8c9" />

---
## 4. Business Logic Validation
Tested whether stored data follows expected business rules.

Examples:
- ShippedDate should not be earlier than OrderDate
- UnitPrice should not be negative
- Quantity should be greater than zero
<img width="1030" height="537" alt="{A7DFEC4B-64C9-4A70-B861-E4DDDA225743}" src="https://github.com/user-attachments/assets/bffe7797-969d-47c6-850e-fd28e1881b43" />

---
<img width="1028" height="410" alt="{FE64CE9C-F80A-44C4-B6CC-F34768287693}" src="https://github.com/user-attachments/assets/57d8c63d-5d33-4c6b-9e6d-f11be7dd6184" />

---
<img width="1048" height="476" alt="{E41B4924-4600-4059-B457-63AB8099408D}" src="https://github.com/user-attachments/assets/21b753ca-2a76-42a9-85e5-4caaa1790a5a" />


## 5. Aggregate Validation
Used grouped queries to validate counts and summaries across tables.

Examples:
- Number of orders per customer
  <img width="1042" height="980" alt="{559C24B4-CC82-4D75-B16B-88E50D2F4EF9}" src="https://github.com/user-attachments/assets/de7d640e-4628-4dc0-a790-7996ae1202b5" />

  ---

- Products with no orders

  <img width="1032" height="1042" alt="{25DC0431-5D86-473D-846B-B25C8E0EF94E}" src="https://github.com/user-attachments/assets/62e649f9-2517-4b0d-b762-5ef54938e25b" />

  ---

- Customers with no orders
  
<img width="1036" height="988" alt="{52807D95-B870-44EE-BB03-8ABFD0B86D1D}" src="https://github.com/user-attachments/assets/e684f129-e75d-4135-9dc1-78b518861053" />

---


## Summary
These validation checks were used to identify anomalies, verify data quality, and confirm that relationships and business rules were maintained in the database.

## Findings
- No duplicate primary IDs found in core tables
- No orphan order records found for customers
- Checked for negative prices and invalid quantities
- Validated that shipped dates do not occur before order dates
- Identified whether any customers or products had no related transactions








