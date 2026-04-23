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
```

## Screenshot
<img width="1128" height="912" alt="image" src="https://github.com/user-attachments/assets/cc698eeb-da1d-4db7-bace-fca2b92e96ae" />




