# Exploratory Testing: User Registration

## Objective
To explore and evaluate the user registration functionality by interacting with the system without predefined test scripts, focusing on identifying usability issues, validation gaps, and edge case failures.

---

## Scope
- Registration form
- Input validation (name, email, password)
- Error messages
- User flow from registration to login

---

## Testing Approach
I performed exploratory testing by:
- Trying valid and invalid inputs
- Testing edge cases (whitespace, special characters, numbers)
- Repeating actions (multiple submissions)
- Observing system feedback and behavior

---

## Key Areas Explored

### 1. Input Validation
- Tested empty fields
- Tested whitespace-only input
- Tested numeric and special characters in name fields
- Tested invalid email formats
- Tested weak and mismatched passwords

---

### 2. User Flow
- Registration → successful account creation
- Registration → duplicate email handling
- Registration → login state after success

---

### 3. Error Handling & Feedback
- Checked clarity of error messages
- Verified validation messages appear correctly
- Observed multiple error messages shown simultaneously

---

### 4. Edge Cases
- Multiple rapid clicks on Register button
- Leading/trailing spaces in inputs
- Repeated submissions

---

## Key Findings

### Bugs Identified
- Registration accepts whitespace-only names
- Registration accepts numeric and special-character names
- Register button allows multiple submissions (UX issue)

---

### Successful Validations
- Invalid email formats are correctly rejected
- Duplicate email registration is blocked
- Password validation rules are enforced

---

## Summary
Exploratory testing helped identify critical input validation issues and UX gaps in the registration process. While core validation mechanisms (email and password) function correctly, improvements are needed in name field validation and submission handling.

---

## Skills Demonstrated
- Exploratory testing
- Negative testing
- Edge case analysis
- Bug identification and reporting
- UX evaluation
