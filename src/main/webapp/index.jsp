<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: url('https://source.unsplash.com/1600x900/?nature,pastel') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2), 
                        0 6px 6px rgba(0, 0, 0, 0.19);
            padding: 30px;
            width: 320px;
            text-align: center;
            transition: transform 0.3s;
        }

        .container:hover {
            transform: scale(1.03);
        }

        h1, h2 {
            color: #5e5e5e;
            margin: 0 0 15px;
        }

        input[type="text"], input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
            background-color: #f5f0f5;
            box-shadow: inset 2px 2px 5px #ccc, inset -2px -2px 5px #fff;
            outline: none;
            font-size: 14px;
        }

        button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            background-color: #ffd6e0;
            color: #333;
            font-weight: bold;
            box-shadow: 2px 2px 5px #aaa, -2px -2px 5px #fff;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        button:hover {
            background-color: #ffc0cb;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>LOGIN</h1>
        <h2>Login Page</h2>
        <form action="controller.do" method="post">
            <input type="text" name="userName" placeholder="Username" required><br>
            <input type="password" name="userPassword" placeholder="Password" required><br>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>

