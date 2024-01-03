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
            padding: 8px 10px;
            border-radius: 5px;
            font-size: medium;
            cursor: pointer;
            
            /* width: 50%; */
           align-self: self-end;
        }
        .dpbtn{
        background-color: #ff6600;
            color: #fff;
            border: none;
            padding: 8px 10px;
            border-radius: 5px;
            font-size: medium;
            cursor: pointer;
            position: fixed;
            right: 50px;
            bottom: 50px;
            /* width: 50%; */
           align-self: self-end;
        }
        .cart-item a{
            align-self: flex-end;
        }
        .buttons p{
            margin: 0;
        }
          .content button{
            width: max-content;
            padding: 5px 6px;
            box-sizing: border-box;
            text-align: center;
            
        }
        .sub{
        width: 100%;
       	display: flex;
       	justify-content:flex-end;
        gap:1rem;
        }
        .content .buttons{
            width: max-content;
            display: flex;
            gap: .5rem;
            box-sizing: border-box;
            align-items: center;
            margin: 5px;
        }

        .cart-item button:hover {
            background-color: orangered;
        }
        
    </style>
     <a href="viewall"><img alt="" src="static/arrow-left-circle-fill.svg"  height="30px" width="30px" ></a>&nbsp;&nbsp;<br><br><br>

    <div class="card-container">
      <div class="cart-items">
        <c:forEach items="${data}" var="cart">
           <div class="cart-item">
                <div class="sample">
                        <img src="displayitemimage?id=${cart.item.id}" alt="">
                    </div>
                    <div class="sub-container">
                    <div class="content">
                        <h3>${cart.item.name}</h3>
                        <h2>${cart.item.price}</h2>
                        <h2> ${cart.item.restaurant.name} (${cart.item.type})</h2>
                        <div class="buttons">
                   <button id="dec">-</button></a>
                        <p id="cnt"value="${cart.item.id}">${cart.quantity}</p>
                        <button id="in">+</button>
                        <button id="go">ok</button>
                    </div>
                    </div>
                    <div class="sub">
                      <a href="remove?id=${cart.id}">   <button class="btn">Remove</button></a>
                        
                        </div>
                </div>
            </div>    
        </c:forEach>
        </div>
        <br>
        <br>
        <a href="orders">   <button class="dpbtn" >place order</button></a>
    </div>
    <script>
                var incButtons = document.querySelectorAll('#in');
                console.log(incButtons);
                var decButtons = document.querySelectorAll('#dec');
                console.log(decButtons);
                var countElements = document.querySelectorAll('#cnt');
                var goButtons = document.querySelectorAll('#go');

                incButtons.forEach((incButton, index) => {
                    let count = parseInt(countElements[index].textContent);
                  let attr=countElements[index].getAttribute("value")
                    incButton.addEventListener('click', () => {
                        count++;
                        countElements[index].textContent = count;
                    });

                    decButtons[index].addEventListener('click', () => {
                        count--;
                        if (count > 0) {
                            countElements[index].textContent = count;
                        }
                    });

                    goButtons[index].addEventListener('click', () => {
                         window.location.href="incrment?count="+count+"&id="+attr
                    });
                });


            </script>
</body>
</html>