
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.navbar {
      background-color: orangered;
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
    .profile-dropdown {
            position: relative;
            display: inline-block;
        }

.profile-dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 120px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

.profile-dropdown-content a {
            color: orangered;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

.profile-dropdown-content a:hover {
            background-color: #f1f1f1;
        }

.profile-dropdown:hover .profile-dropdown-content {
            display: block;
            
            }
.profile-icon {
         margin-right: 10px;
         color: white;
        }
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

<div class="navbar">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="additems">ADD ITEMS</a></li>
      <li><a href="deleteitems">DELETE ITEMS</a></li>
      <li><a href="viewitems">VIEW ALL ITEMS</a></li>
      <li><a href="addcustomer">VIEW ORDERS</a></li>
      <li><div class="profile-dropdown" style="float: right; margin-right: 20px;">
    <h3 align="right">
    <span class="profile-icon">
        <i class="fas fa-user"></i>
    </span>${rname} <i class="fa fa-caret-down"></i></h3>
    <div class="profile-dropdown-content">
        <a href="updaterest">Profile</a>
        <a href="restlogout">Logout</a>
    </div>
</div></li>
    </ul>
  </div>
</body>
</html>