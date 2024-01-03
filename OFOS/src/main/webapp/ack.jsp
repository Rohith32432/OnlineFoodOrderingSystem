<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: rgb(254, 219, 203);
        }

        .main {
            text-align: center; 
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .msg {
            margin-bottom: 20px;
        }

        h1 {
            color:orangered;
           font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           text-transform: capitalize;
            text-align: center;
        }

        .sub-msg {
            font-size: 18px;
        }

        p {
            color: #666;
        }

        button {
            background-color: #ff6a00;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #c95625;
        }
    </style>
</head>
<body>
    <div class="main">
        <div class="msg">
            <h1> <img alt="" src="../static/icon.svg"> ${msg}</h1>
        </div>
        <div class="sub-msg">
            <p>Hope you will order it 😁</p>
           <a href="viewall"> <button>Back to Menu</button></a>
           <a href="check"> <button>Go to Cart</button></a>
        </div>
    </div>
</body>
</html>