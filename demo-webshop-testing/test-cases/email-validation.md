# Test Case: Invalid Email Format

**Feature:** User Registration  
**Priority:** High  

## Test Scenario
Verify that the system rejects invalid email formats.

<img width="833" height="483" alt="image" src="https://github.com/user-attachments/assets/49d8546e-8f86-436e-b7e2-46c35061d281" />


## Steps to Reproduce
1. Navigate to the registration page  
2. Enter:
   - First Name: Test  
   - Last Name: User  
   - Email: testgmail.com  
   - Password: valid password  
3. Click Register  

## Expected Result
System should display an error message indicating invalid email format.

## Actual Result
System displays "Wrong email" and prevents submission.

## Status
Pass
