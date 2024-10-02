<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer List</title>
    <link rel="stylesheet" type="text/css" href="/static/css/styles.css">
</head>
<body>
<h1>Customer List</h1>

<!-- Filtreleme Formu -->
<form action="/customers/filter" method="get">
    <label for="region">Filter by Region:</label>
    <input type="text" id="region" name="region" value="${filterRegion}">

    <label for="name">Filter by Name:</label>
    <input type="text" id="name" name="name" value="${filterName}">

    <label for="date">Filter by Registration Date:</label>
    <input type="date" id="date" name="date" value="${filterDate}">

    <input type="submit" value="Filter">
</form>

<!-- Müşteri Tablosu -->
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Region</th>
        <th>Registration Date</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.firstName}</td>
            <td>${customer.lastName}</td>
            <td>${customer.email}</td>
            <td>${customer.region}</td>
            <td>${customer.registrationDate}</td>
            <td>
                <a href="/customers/edit/${customer.id}">Edit</a> |
                <a href="/customers/delete/${customer.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="/customers/new">Add New Customer</a>
<script src="/static/js/scripts.js"></script>
</body>
</html>
