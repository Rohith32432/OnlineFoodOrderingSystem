<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="">
    <title>Payment Page</title>
    <style>
        body {
            margin: 0;
        }

        .cart-container {
            position: relative;
            width: 100%;
            padding: 50px;
        }

        .cart-item {
            display: flex;
            align-items: center;
            width:90%;
            gap: 1rem;
            padding: 15px;
            background-color: rgba(255, 222, 189, 0.742);
            box-shadow: 0px 0px 8px rgba(76, 71, 58, 0.397);
        }

        .cart-item img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 10px;
        }

        .cart-details {
            flex: 1;
        }

        .cart-item button {
            background-color: #ff6600;
            color: #fff;
            border: none;
            padding: 8px 10px;
            border-radius: 5px;
            font-size: medium;
            cursor: pointer;
        }

        .total-payment {
        
         display: flex;
         width: 90%;
         justify-content: space-between;
         flex-direction: row-reverse;
         gap:5rem;
         margin: 15px;
        }
        #dpbtn{
           background-color: #ff6600;
            color: #fff;
            border: none;
            padding: 8px 10px;
            border-radius: 5px;
            font-size: medium;
            cursor: pointer;
        }
    </style>
</head>
<body>
<%@ include file="custnavbar.jsp" %>
<a href="check"><img alt="" src="static/arrow-left-circle-fill.svg" height="30px" width="30px"  ></a><br><br><br>

<div class="cart-container">
    <c:set var="totalPayment" value="0" />
    <c:forEach items="${data}" var="cart">
        <div class="cart-item">
            <img src="displayitemimage?id=${cart.item.id}" alt="">
            <div class="cart-details">
                <h2>${cart.item.name}</h2>
                <p>Price: ${cart.item.price}</p>
                <p>Quantity: ${cart.quantity}</p>
                <p>Restaurant: ${cart.item.restaurant.name} (${cart.item.type})</p>
            </div>
            <div class="cart-item-price">
               <strong> <p>Total: ${cart.item.price * cart.quantity}</p></strong>
                <c:set var="totalPayment" value="${totalPayment + (cart.item.price * cart.quantity)}" />
            </div>
        </div>
    </c:forEach>
    <div class="total-payment">
        <strong>Total Payment: ${totalPayment}</strong>
    <a href="checkout">   <button id="dpbtn">Make Payment</button></a>
    </div>
</div>

</body>
</html>
