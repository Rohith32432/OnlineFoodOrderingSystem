<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<html> 
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
     <style>

        .cart-container{
            position: relative;
            width: 100%;
            width: 100%;
            padding: 50px;
  
        }
        .cart-items {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 1rem;
        }
        .cart-items .cart-item{
            position: relative;
            display: flex;
            height: 150px;
            width: 50%;
            gap: 3rem;
            box-sizing: border-box;
            border-radius: 11px;
            background-color: rgba(239, 228, 217, 0.742);
            box-shadow: 0px 0px 8px rgba(76, 71, 58, 0.397);
        }
        .cart-item .sample{
            width: 60%;
        }
        .cart-item img{
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 10px 0px 0px 10px;
        }
        .cart-item .sub-container{
            display: flex;
            flex-direction: column;
            width: 50%;
            align-items: baseline;
            padding: 15px;
        }
        .cart-item button {
            position: absolute;
            background-color: #ff6600;
            color: #fff;
            border: none;
            padding: 8px;
            border-radius: 5px;
            font-size: medium;
            cursor: pointer;
            width: 10%;
            right: 15px;
        }

        .cart-item button:hover {
            background-color: orangered;
        }
        .content h1 , h2 {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .content{
            display: flex;
            flex-direction: column;
            gap: .5rem;
        }
    </style>

</head>
<body>
   <%@ include file="restnavbar.jsp" %>
    <br>

     <div class="cart-container">
        <div class="cart-items">
            <c:forEach items="${itemdata}" var="item">
            <div class="cart-item">
                <div class="sample">
                        <img src='displayitemimage?id=${item.id}' alt="">
                    </div>
                    <div class="sub-container">
                    <div class="content">
                        <h2> <c:out value="${item.name}" /></h2>
                        <h2> <c:out value="${item.price}/-" /></h2>
                    </div>
                    <a href='<c:url value="deleteitem/${item.id}"></c:url>'> <button class="btn">Delete</button></a>
                    
                </div>
            </div>
        </c:forEach>
        </div>
        </div>
    
    
</body>
</html>