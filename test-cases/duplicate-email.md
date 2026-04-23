# Test Case: Duplicate Email Registration

**Feature:** User Registration  
**Priority:** High  

## Test Scenario
Verify that the system prevents duplicate account creation using the same email address.
<img width="886" height="512" alt="image" src="https://github.com/user-attachments/assets/e9049d93-8710-4099-8fdb-4d99840df01a" />


## Steps to Reproduce
1. Navigate to the registration page  
2. Enter valid details:
   - First Name: Test  
   - Last Name: User  
   - Email: user_qa_demo@gmail.com  
   - Password: Test@1234  
3. Submit the form  
4. Repeat registration using the same email  

## Expected Result
System should display an error message indicating that the email already exists.

## Actual Result
System displays an error message and prevents duplicate registration.

## Status
Pass 
