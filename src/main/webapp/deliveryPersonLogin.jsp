<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Delivery Person Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            width: 350px;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2c3e50;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #2980b9;
        }

        .forgot-link {
            display: block;
            margin-top: 15px;
            text-align: center;
        }

        .forgot-link a {
            color: #3498db;
            text-decoration: none;
        }

        .forgot-link a:hover {
            text-decoration: underline;
        }
    </style>

    <script>
        function validateForm() {
            const u = document.forms["loginForm"]["deliveryPersonusername"].value;
            const p = document.forms["loginForm"]["deliveryPersonpassword"].value;
            if (u.trim() === "" || p.trim() === "") {
                alert("Please fill in both fields.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="login-container">
        <h2>Delivery Person Login</h2>
        <form name="loginForm" action="deliveryPersonLoginServlet" method="post" onsubmit="return validateForm()">
            <label>Username:</label>
            <input type="text" name="deliverypersonusername" required>

            <label>Password:</label>
            <input type="password" name="deliverypersonpassword" required>

            <button type="submit">Login</button>
        </form>

        <div class="forgot-link">
            <a href="deliveryPersonForgotPassword.jsp">Forgot Password?</a>
        </div>
    </div>

</body>
</html>