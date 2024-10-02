<html>
<head>
    <title>Create/Edit Customer</title>
    <link rel="stylesheet" type="text/css" href="/static/css/styles.css">
</head>
<body>
<h1>Create/Edit Customer</h1>

<!-- Geri bildirim mesajı için -->
<c:if test="${not empty successMessage}">
    <div class="success">${successMessage}</div>
</c:if>
<c:if test="${not empty errorMessage}">
    <div class="error">${errorMessage}</div>
</c:if>

<form action="${customer.id != null ? '/customers/update/' + customer.id : '/customers'}" method="post">
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" value="${customer.firstName}" required><br>

    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" value="${customer.lastName}" required><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${customer.email}" required><br>

    <label for="region">Region:</label>
    <input type="text" id="region" name="region" value="${customer.region}" required><br>

    <label for="registrationDate">Registration Date:</label>
    <input type="date" id="registrationDate" name="registrationDate" value="${customer.registrationDate}" required><br>

    <input type="submit" value="Save">
</form>
<a href="/customers">Back to Customer List</a>
<script src="/static/js/scripts.js"></script>
</body>
</html>
