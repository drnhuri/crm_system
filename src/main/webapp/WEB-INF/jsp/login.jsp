<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="/static/css/styles.css">
</head>
<body>
<h1>Login</h1>

<!-- Hata mesajı için -->
<c:if test="${not empty errorMessage}">
    <div class="error">${errorMessage}</div>
</c:if>

<form action="/login" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br>

    <input type="submit" value="Login">
</form>
</body>
</html>
