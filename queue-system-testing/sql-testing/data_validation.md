# Data Validation Testing (SQL Perspective)

## Objective
To verify that data stored in Google Sheets accurately reflects user actions performed in the application.

---

## Approach
Data validation was performed by comparing UI actions with corresponding entries in the database (Google Sheets).

---

## Scenarios Tested

### 1. Client Sign-In
**Action:** User enters first and last name  
**Expected:** New row added in "Clients" sheet  
**Validated (in Google Sheets):**
- Client ID generated
- Name stored correctly
- Timestamp recorded
  
<img width="644" height="513" alt="image" src="https://github.com/user-attachments/assets/1cfb5bcf-1ae9-4ae2-b924-ba670e464651" />
---
<img width="437" height="73" alt="image" src="https://github.com/user-attachments/assets/f8f0cbb2-1821-4e6e-a417-93d0242a6198" />
---


### 2. Queue Entry Creation
**Action:** User signs in  
**Expected:** Entry created in "Queue" sheet  

**Validated (in Google Sheets):**
- Queue ID generated
- Correct client ID linked
- Status = "Waiting"
- Time and date recorded

<img width="1102" height="606" alt="image" src="https://github.com/user-attachments/assets/be9e7b5e-8a3c-482d-90aa-eddca63f0160" />
---
<img width="933" height="95" alt="image" src="https://github.com/user-attachments/assets/b2648fa1-2ac1-4b9d-88ec-7de35c5abf01" />

---

### 3. Status Updates
**Action:** Staff clicks "Call"  
**Expected:** Status changes from "Waiting" → "In Office"  

**Validated:**
- Correct row updated
- Status column reflects change
  
<img width="1101" height="617" alt="image" src="https://github.com/user-attachments/assets/c72301f3-7924-491c-bd3a-ab6b7928c80a" />
---
<img width="944" height="81" alt="image" src="https://github.com/user-attachments/assets/e410f385-c2e1-47d9-9c53-d26b379a7fc4" />

---

### 4. Data Consistency
- Client ID matches across sheets
- No duplicate active queue entries
- Data updates reflect UI actions correctly

---

## Findings
- Data consistency maintained across operations
- Correct mapping between UI actions and stored records
