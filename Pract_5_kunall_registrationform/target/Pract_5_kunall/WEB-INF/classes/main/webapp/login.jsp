<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String errorMessage = request.getParameter("error");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* Apply Google Font */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(to right, #4facfe, #00f2fe);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }

        .container h2 {
            margin-bottom: 15px;
            font-size: 24px;
            font-weight: 600;
            color: #333;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-bottom: 10px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        input:focus {
            outline: none;
            border-color: #4facfe;
            box-shadow: 0px 0px 5px rgba(79, 172, 254, 0.5);
        }

        .btn {
            background: #4facfe;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
            width: 100%;
        }

        .btn:hover {
            background: #007bff;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Login</h2>
    <%
        String message = request.getParameter("message");
        if (message != null) {
    %>
    <p style="color:red;"><%= message %></p>
    <%
        }
    %>

    <form action="LoginServlet" method="post">
        <input type="email" name="email" placeholder="Enter Email" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <input type="submit" value="Login" class="btn">
        <p>Don't have an account ? <a href="index.jsp">SignUp</a></p>
    </form>
</div>

</body>
</html>
