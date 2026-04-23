# API Test Scripts

This document contains Postman test scripts used to validate API behavior for JSONPlaceholder endpoints.
## Endpoint
1. GET /users

```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

pm.test("Response is JSON", function () {
    pm.response.to.be.json();
});

pm.test("Users list is not empty", function () {
    const data = pm.response.json();
    pm.expect(data.length).to.be.above(0);
});

pm.test("User has required fields", function () {
    const data = pm.response.json();
    pm.expect(data[0]).to.have.property("id");
    pm.expect(data[0]).to.have.property("name");
    pm.expect(data[0]).to.have.property("email");
});
```

## Screenshot
<img width="1128" height="912" alt="image" src="https://github.com/user-attachments/assets/cc698eeb-da1d-4db7-bace-fca2b92e96ae" />

---
## 2. GET /users/1 (Valid User)

```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

pm.test("User has id", function () {
    const data = pm.response.json();
    pm.expect(data).to.have.property("id");
});
```
## Screenshot

<img width="1128" height="912" alt="image" src="https://github.com/user-attachments/assets/0f1de8d6-a2c8-4f21-b264-d450727ec316" />

---
## 3. GET /users/999 (Invalid User)

```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

pm.test("Response is empty object", function () {
    const data = pm.response.json();
    pm.expect(Object.keys(data).length).to.eql(0);
});
```
## Screenshot

<img width="1128" height="912" alt="image" src="https://github.com/user-attachments/assets/4fddd6ab-9e74-4655-a26a-b2295a9cc4d5" />

---

## 4. POST /posts (Create Data)

```javascript
pm.test("Status code is 201", function () {
    pm.response.to.have.status(201);
});

pm.test("Response contains created data", function () {
    const data = pm.response.json();
    pm.expect(data).to.have.property("id");
    pm.expect(data.title).to.eql("QA test");
});
```
## Screenshot

<img width="1128" height="912" alt="image" src="https://github.com/user-attachments/assets/e3ff184d-f876-4610-9adb-99caae2d8538" />

---

## Summary

These test scenarios validate:
- successful retrieval of resources
- retrieval of a single valid record
- handling of a non-existing record
- successful creation of data via POST
- response status and structure validation



