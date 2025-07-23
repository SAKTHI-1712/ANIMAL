<html>
<head>
    <title>Login</title>
    <style>
        .container {
            width: 300px;
            margin: 0 auto;
        }
        #login-form {
            padding: 20px;
            border: 1px solid #eb9797;
            border-radius: 5px;
            background-color: pink;
            text-align: center;
        }
    </style>
</head>
<body>
    <center>
        <div class="container">
            <h1 align="center">LOGIN</h1>
    <h2>Login Page</h2>
    <form action="controller.do" method="post">
        <input type="text" name="userName" placeholder="Username" required><br>
        <input type="password" name="userPassword" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>
    </div>
    </center>
</body>
</html>
