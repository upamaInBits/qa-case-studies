# Bug Report: Registration Accepts Whitespace-Only Names

**Severity:** High  
**Environment:** Chrome (Mac)  
**Feature:** User Registration  

## Description
The registration form allows users to enter whitespace-only values in the First Name and Last Name fields, which are accepted as valid input.

<img width="739" height="387" alt="image" src="https://github.com/user-attachments/assets/2a04606f-a074-4423-8449-96dc65c3a652" />

## 

<img width="818" height="387" alt="image" src="https://github.com/user-attachments/assets/b3578c66-213c-4a83-a027-176232e57b9f" />



## Steps to Reproduce
1. Navigate to the registration page  
2. Enter the following:
   - First Name: "     "
   - Last Name: "     "
   - Email: validemail@example.com  
   - Password: Test@1234  
3. Click "Register"  

## Expected Result
The system should reject whitespace-only input and display a validation error indicating that the fields cannot be empty.

## Actual Result
The system accepts whitespace-only values and allows successful registration.

## Impact
This may lead to invalid or meaningless user data being stored in the system.

## Recommendation
Trim input values and validate that required fields contain non-empty, meaningful characters before submission.
