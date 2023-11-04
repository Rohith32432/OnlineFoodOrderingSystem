<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delivery Boy Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #ff9900;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        h1 {
            font-size: 32px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .order-list {
            margin-top: 20px;
        }

        .order {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #f9f9f9;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        .order h2 {
            font-size: 20px;
            color: #2a88ad;
        }

        .order p {
            font-size: 16px;
        }

        .order-details {
            text-align: right;
        }

        .btn {
            background-color: #ff6b6b;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #e65050;
        }

        .map-container {
            text-align: center;
        }

        iframe {
            display: none;
        }

        /* Add a subtle background pattern */
        body::before {
            content: "";
            background-image: url('your-pattern-image.jpg');
            opacity: 0.05;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            position: fixed;
            z-index: -1;
        }
    </style>
</head>
<body>
<%@ include file="dboynavbar.jsp" %>
    
    <div class="container">
        <h2>Assigned Orders</h2>
        <div class="order-list">
            <div class="order">
                <h2>Order #123</h2>
                <p>Customer: John Doe</p>
                <p>Address: 123 Main St, City</p>
                <div class="order-details">
    <button class="btn" onclick="redirectToLocation()">Show Location</button>
                </div>
                <div class="map-container">
                    <iframe id="map123" width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src=""></iframe>
                </div>
            </div>
            <div class="order">
                <h2>Order #124</h2>
                <p>Customer: Jane Smith</p>
                <p>Address: 456 Elm St, Town</p>
                <div class="order-details">
    <button class="btn" onclick="redirectToLocation()">Show Location</button>
                </div>
                <div class="map-container">
                    <iframe id="map124" width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src=""></iframe>
                </div>
            </div>
        </div>
    </div>
 <script>
        function redirectToLocation() {
            // Specify the URL of the JSP file you want to redirect to
            var targetUrl = "map.jsp"; // Replace with the actual URL

            // Redirect to the target JSP file
            window.location.href = targetUrl;
        }
    </script>
    
</body>
</html>
