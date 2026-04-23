# Bug Report: Register Button Allows Multiple Submissions

**Severity:** Low–Medium  
**Type:** UX / Interaction  

## Description
The Register button remains clickable during form submission, allowing multiple rapid submissions which result in duplicate email error messages after a successful registration.

<img width="616" height="304" alt="image" src="https://github.com/user-attachments/assets/99a6bd63-3dda-44c2-b75e-f269b971d885" />

##

<img width="629" height="304" alt="image" src="https://github.com/user-attachments/assets/aeaca1dc-e29f-45ea-92a1-0af2430d5236" />

## Steps to Reproduce
1. Fill out registration form with valid details  
2. Click "Register" multiple times quickly  

## Expected Result
- Register button should be disabled after first click  
- User should see clear success confirmation  

## Actual Result
- Multiple submissions occur  
- System displays "The specified email already exists" after successful registration  
- This may confuse users about whether registration succeeded  

## Impact
Creates unclear user experience and misleading feedback.

## Recommendation
Disable the Register button after first click or show loading indicator.
