<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.navbar {
      background-color: #FF5733;
      color: #fff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
      padding: 10px 0;
      position: fixed;
      width: 100%;
      top: 0;
      z-index: 1;
    }

    .navbar ul {
      list-style: none;
      display: flex;
      justify-content: center;
      padding: 0;
    }

    .navbar li {
      margin: 10px;
    }

    .navbar a {
      text-decoration: none;
      color: #fff;
      font-weight: bold;
      padding: 8px 12px;
      border-radius: 5px;
      transition: background-color 0.3s;
    }

    .navbar a:hover {
      background-color: #E95028; /* Darker orange on hover */
    }
</style>
</head>
<body>

<div class="navbar">
    <ul>
      <li><a href="adhome">Home</a></li>
      <li><a href="viewallrestaurants">View All Restaurants</a></li>
      <li><a href="deleterestaurant">Delete Restaurants</a></li>
      <li><a href="viewallcustomers">View all Customers</a></li>
      <li><a href="dboyregister">Add Delivery Partner</a></li>
      <li><a href="admin">Logout</a></li>
    </ul>
  </div>
</body>
</html>