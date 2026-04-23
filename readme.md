# QA Case Studies

This repository showcases my approach to manual testing across different systems, focusing on validation, user workflows, data integrity, and backend behavior.

---

## Projects

### 1. Demo Web Shop Testing  
**Application:** https://demowebshop.tricentis.com/  
**Focus:** UI Testing, Validation, Exploratory Testing  

#### Scope
- User Registration
- Input validation (name, email, password)
- Error handling and user feedback

#### Testing Approach
- Exploratory testing
- Negative testing
- Edge case analysis

#### Key Findings
**Bugs Identified:**
- Whitespace-only names accepted  
- Numeric and special characters allowed in name fields  
- Register button allows multiple submissions (UX issue)

**Successful Validations:**
- Invalid email formats are rejected  
- Duplicate email registration is blocked  
- Password validation rules are enforced  

#### Artifacts
- Bug reports  
- Test cases  
- Exploratory testing documentation  

📂 See: `demo-webshop-testing/`

---

### 2. Queue Management System Testing  
**Focus:** Data Validation & API Testing  

#### System Overview
- Frontend: Web-based client sign-in & staff dashboard  
- Backend: Google Apps Script  
- Database: Google Sheets  

---

### Data Validation (SQL Perspective)
Validated data consistency by verifying that user actions correctly update the database (Google Sheets).

**Tested:**
- Client creation and storage  
- Queue entry creation  
- Status updates (Waiting → In Office → Ready)  
- Data consistency across sheets  

---

### API Testing (Apps Script Backend)
Tested backend behavior by sending requests and validating system responses.

**Tested:**
- Client sign-in requests  
- Queue retrieval  
- Status updates  
- Queue reset functionality  

**Approach:**
- UI-triggered backend validation  
- Postman-based request testing (via Apps Script web endpoints)  
- Verified response behavior and corresponding data updates  

---

#### Artifacts
- Data validation documentation  
- API testing scenarios  
- Test scenarios  

📂 See: `queue-system-testing/`

---

## Skills Demonstrated

- Manual Testing  
- Exploratory Testing  
- Test Case Design  
- Bug Reporting  
- UI/UX Validation  
- Edge Case & Negative Testing  
- Data Validation (Database Testing)  
- API Testing (Backend Behavior)  

---

## Tools & Technologies

- Google Apps Script  
- Google Sheets (as database)  
- Postman  
- GitHub  

---

## Summary

These case studies demonstrate my ability to test both frontend and backend systems by identifying validation gaps, verifying data integrity, and ensuring consistent system behavior across workflows.
