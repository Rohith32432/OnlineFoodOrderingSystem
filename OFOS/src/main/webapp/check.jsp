<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<%@ include file="custnavbar.jsp" %> 
    <style>
        body{
            margin: 0;

        }
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
            height: 250px;
            width: 80%;
            gap: 3rem;
            box-sizing: border-box;
            /* padding: 5px; */
            border-radius: 11px;
            background-color: rgba(255, 222, 189, 0.742);
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
            background-color: #ff6600;
            color: #fff;
            border: none;
            padding: 8px 80px;
            border-radius: 5px;
            font-size: medium;
            cursor: pointer;
            
            /* width: 50%; */
           align-self: self-end;
        }
        .cart-item a{
            align-self: flex-end;
        }

        .cart-item button:hover {
            background-color: orangered;
        }
    </style>
     <a href="viewall">back</a>&nbsp;&nbsp;<br><br><br>

    <div class="card-container">
      <div class="cart-items">
        <c:forEach items="${data}" var="cart">
           <div class="cart-item">
                <div class="sample">
                        <img src="${cart.item.url}" alt="">
                    </div>
                    <div class="sub-container">
                    <div class="content">
                        <h3>${cart.item.name}</h3>
                        <h2>${cart.item.price}</h2>
                        <h2>Sample description</h2>
                    </div>
                      <a href="remove?id=${cart.id}">   <button class="btn">Remove</button></a>
                </div>
            </div>    
        </c:forEach>
        </div>
    </div>
    
</body>
</html>