<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <style>
        body {
            background-color: #2b1055;
            color: #fff;
            font-family: 'Arial', sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h2 {
            color: #fff;
        }

        form {
            background-color: #1a0d33;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin-top: 20px;
        }

        label {
            display: block;
            color: #fff;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            color: green;
            text-decoration: none;
            margin-top: 20px;
            display: inline-block;
        }

        a:visited {
            color: pink;
        }

        a:hover, a:active {
            color: red;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Login</h2>
    <form method="post" action="outloginpass">
        <label for="fname">User name:</label><br>
        <input type="text" id="fname" name="username"><br>
        <label for="lname">Password:</label><br>
        <input type="password" id="lname" name="password"><br><br>
        <input type="submit" value="Submit">
        <input type="hidden" value="Client has submitted basic details!!" name="hiddenforms">
    </form>
    <a href= "outregister.jsp">New user!! Click Here to register</a>
	<br>
	<a href ="changepass.jsp">Click here to update password</a>
</body>
</html>
