# Bug Report: Registration Accepts Numeric and Special-Character Names

**Severity:** Medium  
**Environment:** Chrome (Mac)  
**Feature:** User Registration  

## Description
The registration form allows users to register with invalid name values consisting only of numbers and special characters.
<img width="700" height="492" alt="image" src="https://github.com/user-attachments/assets/b1e1f06d-e4a0-451e-9a9e-e488d65738fa" />
##
##
<img width="906" height="492" alt="image" src="https://github.com/user-attachments/assets/c9c03b51-b511-4601-8c39-ee240d3821f0" />

## Steps to Reproduce
1. Navigate to the registration page  
2. Enter the following:
   - First Name: `1234`
   - Last Name: `@@@@@`
   - Email: a new valid email address
   - Password: valid password
   - Confirm Password: matching valid password
3. Click **Register**

## Expected Result
The system should reject invalid name input and display a validation message indicating that names must contain valid alphabetic characters.

## Actual Result
The system accepts the values and completes registration successfully.

## Impact
This allows invalid customer profile data to be stored, which can reduce data quality and affect downstream processes that rely on meaningful user identity information.

## Recommendation
Add server-side and client-side validation to reject numeric-only and special-character-only values in name fields.

