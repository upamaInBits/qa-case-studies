# API-style testing (Apps Script Backend)

## Objective
To verify that backend functions in the queue management system correctly process user actions, return expected results, and keep frontend behavior consistent with stored data.

---

## Backend Under Test
The application backend is implemented using Google Apps Script. Frontend actions trigger backend functions that read from and write to Google Sheets.

Key backend behaviors tested:
- Client sign-in
- Queue retrieval
- Queue entry creation
- Status updates
- Queue reset

---

## Testing Approach
API-style testing was performed by triggering frontend actions and validating:
- expected system response
- UI updates
- corresponding changes in Google Sheets

This approach was used because the backend is exposed through Apps Script functions rather than a separate REST API.

---

## Scenarios Tested

### 1. Client Sign-In
**Action:** User enters first and last name and clicks Sign In

**Expected Backend Behavior:**
- backend checks whether the client already exists
- creates a new client if needed
- creates a queue entry
- returns success response

**Validated:**
- sign-in completes successfully
- client record is created when appropriate
- queue entry appears in dashboard
- Google Sheets reflects the new entry

<img width="667" height="471" alt="image" src="https://github.com/user-attachments/assets/aa8d0f0f-b2da-4dcf-8095-1e4af4dc3b7b" />
---
<img width="407" height="103" alt="image" src="https://github.com/user-attachments/assets/e95401ca-d21f-4262-8b1c-9526e1971289" />


---

### 2. Existing Client Handling
**Action:** User signs in with a previously used name

**Expected Backend Behavior:**
- backend checks for existing client
- prevents duplicate active queue entries for the same day
- returns correct status or confirmation behavior

**Validated:**
- duplicate handling works as expected
- system does not create duplicate active queue entries
  
<img width="673" height="600" alt="image" src="https://github.com/user-attachments/assets/5a3daf15-7548-4b63-8d88-11fd42d5940f" />

---

### 3. Queue Retrieval
**Action:** Staff dashboard loads or refreshes

**Expected Backend Behavior:**
- backend fetches current queue data
- returns updated queue list to frontend

**Validated:**
- dashboard displays latest queue entries
- waiting / in-office / ready counts update correctly

<img width="1134" height="844" alt="image" src="https://github.com/user-attachments/assets/4a6cb568-675b-43a6-b232-41fa047346db" />
---
<img width="941" height="102" alt="image" src="https://github.com/user-attachments/assets/1b4a989f-111e-4bad-982a-6ec3dfafe6b6" />


---

### 4. Status Update
**Action:** Staff updates a client from Waiting → In Office → Ready

**Expected Backend Behavior:**
- backend updates the correct queue row
- frontend refreshes and displays updated status

**Validated:**
- status changes appear correctly in dashboard
- matching row is updated in Google Sheets

<img width="1112" height="817" alt="image" src="https://github.com/user-attachments/assets/10fd4457-9208-4a86-a57c-1cf4f6122bac" />
---

### 5. Queue Reset
**Action:** Staff clicks Reset Today

**Expected Backend Behavior:**
- backend removes current-day queue entries
- frontend refreshes with cleared queue

**Validated:**
- current-day queue entries are removed
- dashboard reflects empty or updated queue state

<img width="1112" height="817" alt="image" src="https://github.com/user-attachments/assets/5388b8e9-ba0b-4b4d-9557-dccefeaf4781" />
---
<img width="875" height="182" alt="image" src="https://github.com/user-attachments/assets/4c7e852b-7522-48c5-8dd4-58fa028cde86" />


---

## Observations
- Backend behavior stayed aligned with frontend actions
- Queue data updated correctly after sign-in and status changes
- System maintained workflow consistency during normal use

---

## Limitations
Testing was performed through frontend-triggered backend calls rather than direct endpoint testing in a tool such as Postman, because this project uses Google Apps Script rather than a standalone REST API.

---

## Skills Demonstrated
- Backend behavior validation
- End-to-end workflow testing
- API-style testing
- Response verification through UI and data changes
- System consistency checking
