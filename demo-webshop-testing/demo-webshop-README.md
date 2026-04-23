# Demo Web Shop – QA Case Study

## Application
https://demowebshop.tricentis.com/

## Date Tested
April 22, 2026

---

## Objective
To evaluate the user registration functionality using exploratory testing, focusing on input validation, user workflows, and identifying edge case failures.

---

## Scope
- User Registration
- Input validation (name, email, password)
- Error handling and feedback
- User flow (registration → login)

---

## Testing Approach
Testing was performed using an exploratory approach without predefined scripts. The process included:

- Trying valid and invalid inputs
- Testing edge cases (whitespace, special characters, numeric inputs)
- Repeating actions (multiple submissions)
- Observing system behavior and feedback

---

## Key Areas Tested

### Input Validation
- Empty fields
- Whitespace-only input
- Numeric and special characters in name fields
- Invalid email formats
- Weak and mismatched passwords

---

### User Flow
- Successful registration
- Duplicate email handling
- Login state after registration

---

### Error Handling
- Validation message clarity
- Correct error triggering
- Multiple error messages display

---

### Edge Case Testing
- Rapid multiple clicks on Register button
- Leading/trailing spaces
- Repeated submissions

---

## Key Findings

### Bugs Identified
- Whitespace-only names are accepted
- Numeric and special characters are allowed in name fields
- Multiple submissions allowed via repeated clicks (UX issue)

---

### Successful Validations
- Invalid email formats are rejected
- Duplicate email registration is blocked
- Password validation rules are enforced

---

## Test Coverage

### Bug Reports
- Whitespace validation issue
- Invalid name input handling
- Multiple submit behavior

### Test Cases
- Email validation
- Duplicate email handling
- Password validation

---

## Skills Demonstrated
- Exploratory testing
- Negative testing
- Edge case analysis
- Test case design
- Bug reporting
- UI/UX evaluation

---

## Focus Areas
- Web application testing
- UI/UX validation
- User workflows
- Input validation
