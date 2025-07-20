<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>Login Page</h2>
    <form action="controller.do" method="post">
        <input type="text" name="userName" placeholder="Username" required>
        <input type="password" name="userPassword" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>
</body>
</html>
