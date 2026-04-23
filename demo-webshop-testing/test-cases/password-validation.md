# Test Case: Password Validation

## Scenario
Verify that the system enforces password rules and matching confirmation.
<img width="790" height="351" alt="Screenshot 2026-04-22 at 6 41 18 PM" src="https://github.com/user-attachments/assets/276979ff-2213-482d-865a-7b4a016a573b" />

## Steps
1. Enter password shorter than 6 characters  
2. Enter different confirmation password  
3. Click Register  

## Expected
System should:
- reject short password  
- reject mismatched confirmation  
- display appropriate error messages  

## Actual
System displays:
- “The password should have at least 6 characters”  
- “The password and confirmation password do not match”  

**Status:** Pass   
