<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(45deg, #FF5733, #FF5733 50%, #fff 50%);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 400px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin-left: 40px; /* Increase the left margin */
            transition: transform 0.3s ease-in-out; /* Add transition for hover effect */
        }
        .container:hover {
            transform: scale(1.05); /* Enlarge the card on hover */
        }
        h3 {
            text-align: center;
            color: #007BFF;
            font-style: italic;
            font-weight: bold;
        }
        form {
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out; /* Add transition for button color change */
        }
        .button:hover {
            background-color: #0056b3; /* Change button color on hover */
        }
        .blink {
            animation: blink 1s infinite; /* Add blinking animation to error message */
        }
        @keyframes blink {
            0% {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <span class="blink">
            <h3 style="color: red">${message}</h3>
        </span>
        <h3 style="color: black;"><u><b><i>Admin Login</i></b></u></h3>
        <form method="post" action="checkadminlogin">
            <label for="uname">Username</label>
            <input type="text" name="uname" id="uname" required>
            <br>
            <label for="pwd">Password</label>
            <input type="password" name="pwd" id="pwd" required>
            <br>
            <input type="submit" value="Login" class="button">
        </form>
    </div>
</body>
</html>