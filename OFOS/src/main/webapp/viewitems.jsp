<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
    <style>
      
.card-container {
    display: flex;
    justify-content: center;
}


.card {
    width: 300px;
    height:max-content;
    border: 1px solid #ccc;
    padding: 20px;
    text-align: center;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    margin: 10px; 
    }


.card img {
    max-width: 100%;
    height: auto;
}

.card h2 {
    font-size: 24px;
    margin: 10px 0;
}

.card p {
    font-size: 18px;
}

    </style>
</head> 
<body> 
 
 <%@ include file="restnavbar.jsp" %>
<br> 

 <div class="search" >
        <form  action="search">
        <input type="text" name="data" >
        <input type="submit">
    </form>
    </div>
 
<h3 align="center"><u>View Items</u></h3> 
 

 <div class="card-container">
<c:forEach items="${itemlst}"  var="emp"> 
    <div class="card">
        <img src="${emp.url}" alt="Image Description">
        <h2>${emp.name}</h2>
        <p>${emp.price}</p>
    </div>
  
</c:forEach> 
 </div>

</body>
</html>

</body> 
</html>