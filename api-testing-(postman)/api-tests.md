# API Test Scripts

## Endpoint
GET /users

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

---

### Screenshot
<img width="1128" height="912" alt="image" src="https://github.com/user-attachments/assets/0181befe-88ad-40bf-963a-d066bd7d2e7d" />
