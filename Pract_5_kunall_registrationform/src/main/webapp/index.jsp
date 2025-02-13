<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
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
            background: linear-gradient(to right, #ff9966, #ff5e62);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }

        .container h2 {
            margin-bottom: 15px;
            font-size: 24px;
            font-weight: 600;
            color: #333;
        }

        input, textarea, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        input:focus, textarea:focus {
            outline: none;
            border-color: #ff5e62;
            box-shadow: 0px 0px 5px rgba(255, 94, 98, 0.5);
        }

        .gender-label {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-bottom: 10px;
        }

        .btn {
            background: #ff5e62;
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
            background: #e84142;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Register</h2>

    <form action="RegisterServlet" method="post">
        <input type="text" name="name" placeholder="Enter Name" required>
        <input type="email" name="email" placeholder="Enter Email" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <input type="text" name="phone" placeholder="Enter Phone No." required>

        <div class="gender-label">
            <label><input type="radio" name="gender" value="Male" required> Male</label>
            <label><input type="radio" name="gender" value="Female" required> Female</label>
        </div>

        <textarea name="address" placeholder="Enter Address" required></textarea>
        <input type="text" name="city" placeholder="Enter City" required>
        <input type="text" name="state" placeholder="Enter State" required>
        <input type="text" name="pin_code" placeholder="Enter Pin Code" required>

        <input type="submit" value="Register" class="btn">
        <p>Already have an account?<a href="login.jsp">Login</a></p>
    </form>
</div>

</body>
</html>
