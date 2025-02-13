<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj == null || sessionObj.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        /* Google Font */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(to right, #36d1dc, #5b86e5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            padding: 20px;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
            height: 200px;
            width: 700px;
            text-align: center;
        }

        .container h2 {
            font-size: 26px;
            font-weight: 600;
            color: #333;
            margin-bottom: 15px;
        }

        .user-name {
            font-size: 22px;
            font-weight: bold;
            color: #5b86e5;
        }

        .logout-btn {
            background: #ff5e62;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            display: inline-block;
            margin-top: 15px;
            transition: background 0.3s ease-in-out;
        }

        .logout-btn:hover {
            background: #e84142;
        }

    </style>
</head>
<body>

<div class="container">
    <h2>Welcome, <span class="user-name"><%= sessionObj.getAttribute("user") %></span>!</h2>
    <p>Welcome to our community! Together, we grow</p>
    <a href="LogoutServlet" class="logout-btn">Logout</a>

</div>

</body>
</html>
