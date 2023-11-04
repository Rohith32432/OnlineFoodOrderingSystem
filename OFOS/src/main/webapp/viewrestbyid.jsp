<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
<html> 
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            background: linear-gradient(45deg, #FFA500, #FFD700);
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .container {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin: 20px auto;
            max-width: 600px;
        }

        .content {
            font-size: 18px;
            color: #333;
        }

        .data {
            margin-bottom: 10px;
        }

        .header {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #FF5733;
        }

        .data-label {
            font-weight: bold;
        }
         body {
      background: linear-gradient(45deg, #FF5733 0%, #FF5733 50%, #fff 50%);
      text-align: center;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    

   .card {
  width: 300px;
  padding: 20px;
  margin: 45px;
  border: 1px solid #0077B6;
  border-radius: 10px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  background-color: #ffffff; /* Change background color to white */
  color: #FF5733; /* Change text color to orange */
  display: inline-block;
  text-align: center;
  position: left;
  margin-top: 60px;
}
 .cardf {
      width: 300px;
      padding: 20px;
      margin: 45px;
      border: 1px solid #0077B6; /* Border color for a nice blue accent */
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      background-color: #FF5733; /* Vibrant background color (e.g., orange) */
      color: #fff; /* Text color (white) */
      display: inline-block;
      text-align: center;
      position: left;
      margin-top: 60px; /* Adjusted to make space for the fixed navbar */
    }


    .total-text {
      font-size: 24px;
      font-weight: bold;
    }

    .fireworks {
      width: 10px;
      height: 10px;
      background-color: #ffea2e; /* Firework color (e.g., yellow) */
      border-radius: 50%;
      position: absolute;
      animation: fireworks 1s infinite;
    }

    @keyframes fireworks {
      0% {
        opacity: 1;
        transform: translateY(0) rotate(0deg);
      }
      100% {
        opacity: 0;
        transform: translateY(-200px) rotate(360deg);
      }
    }
    /* Added margin-right to create a 2-inch horizontal distance */
    .total-text + .total-text {
      margin-right: 2in;
    }

        /* You can add more styles as needed */
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    
  <div class="container">
        <div class="header">Restaurant Details</div>
        <div class="content">
            <div class="data">
                <span class="data-label">ID:</span> ${rest.id}
            </div>
            <div class="data">
                <span class="data-label">Name:</span> ${rest.name}
            </div>
            <div class="data">
                <span class="data-label">Email:</span> ${rest.email}
            </div>
            <div class="data">
                <span class="data-label">Location:</span> ${rest.location}
            </div>
            <div class="data">
                <span class="data-label">Contact No:</span> ${rest.contactno}
            </div>
        </div>
    </div>
</body>
</html>