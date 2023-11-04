<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
  <style>
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
    
  </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
    <br>

  <div class="card">
    <span class="total-text">Total Restaurant = ${rcount}</span>
    <div class="fireworks" style="left: 50%; top: 50%;"></div>
    <div class "fireworks" style="left: 70%; top: 30%;"></div>
    <div class="fireworks" style="left: 30%; top: 30%;"></div>
    <div class="fireworks" style="left: 60%; top: 60%;"></div>
    <div class="fireworks" style="left: 40%; top: 60%;"></div>
  </div>

  <div class="cardf">
    <span class="total-text">Total Customers = ${ccount}</span>
    <div class="fireworks" style="left: 50%; top: 50%;"></div>
    <div class="fireworks" style="left: 70%; top: 30%;"></div>
    <div class="fireworks" style="left: 30%; top: 30%;"></div>
    <div class="fireworks" style="left: 60%; top: 60%;"></div>
    <div class "fireworks" style="left: 40%; top: 60%;"></div>
  </div>
</body>
</html>