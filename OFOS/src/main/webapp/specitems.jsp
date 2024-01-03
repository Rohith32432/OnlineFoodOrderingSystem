<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="items.css">
    <title>Rectangle Card</title>

</head>
<body>
<%@ include file="custnavbar.jsp" %> 
    <style>
        body{
            margin: 0;
            overflow-x: hidden;
        }
        .banner{
            position: relative;
            height: 35vh;
            display:block;
            box-shadow: 0px 0px 8px  black;
            width: 100%;
        }
        .pic{
            position: absolute;
            inset: 0;
        }
        .pic img{
            object-fit: cover;
            width: 100%;
            z-index: -1;
            height: 100%;
        }
        .back{
            position: absolute;
            inset: 0;
            background: linear-gradient(180deg, rgba(0, 0, 0, 0.61) 40%, rgba(43, 43, 43, 0.427) 90%);    
            color: whitesmoke;
            display: flex;
            justify-content: space-between;
            padding: 50px;
            padding-bottom: 0px;
            align-items: center;
        }
        .resdetails{
            text-transform: capitalize;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            animation: intro1 1.2s forwards ;
        }
        .resdetails h1{
            font-size: 2.5rem;
        }
        .details{
            display: flex;
            flex-direction: column;
           align-items: end; 
           gap: 1rem;
           text-transform: capitalize;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .details h3{
            margin: 0;
            animation: intro 1.5s forwards ;
        }
       
        @keyframes intro {
            from{
                transform: translateX(200%);
            }
            to{
                transform: translateX(0%);
            }
        }
        @keyframes intro1 {
            from{
               opacity: 0;
               filter: blur(5px);
            }
            to{
                opacity: 1;
            }
        }
        @media only screen and (max-width: 700px) {
            .back{
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }
            .resdetails h1{
                font-size: 2rem;
            }
            .resdetails h3{
                display: none;

            }
            .details{
                flex-direction: row;
                align-items: center;
                font-size: .8rem;
            }
            .details h3{
                animation: intro1 2s forwards ;
            }

        }
                    .custom-modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 60%;
    text-align: center;
    border-radius: 5px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

.modal-btn {
    background-color: #ff4d00;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 5px 10px;
    cursor: pointer;
    margin: 5px;
    transition: background-color 0.3s;
}

.modal-btn:hover {
    background-color: #ff4d00;
}
.close {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 18px;
    font-weight: bold;
    cursor: pointer;
}
    </style>
    <div class="banner">
        <div class="pic">
            <img src="displayrestimage?id=${res.id}" alt="">
            <div class="back">
                <div class="resdetails">
                <h1>${res.name}</h1>
                <h3>${res.location}</h3>
                </div>
            </div>
        </div>

    </div>

</body>
<body>
      <div class="main-section">

            <input type="text" placeholder="enter name" id="search">
        </div>
        <div class="maxi">
    	<c:forEach items="${item}"  var="itm"> 
            <div class="card">
                <img src='displayitemimage?id=${itm.id}' alt="Food Image">
                <div class="card-content">
                    <div>
                        <h2><span>${itm.name}</span></h2>
                        <h3>Price: ${itm.price}/- </h3>
                    </div>
                  <button class="view" id="ctvalue" value="${itm.id}">ADD</button>
                </div>
            </div>
   		 </c:forEach> 
         </div>
       <section>
        <div class="detail-show ">
            <img src="" alt="Food Image">
            <div class="details-content">
                <div class="raw">
                    <ul>
                        <li>
                            <h2>Name: <span>${itm.name}</span>
                        </li>
                        <li>
                            <h2>Price: <span>${itm.price}</span>
                        </li>
                        
                    </ul>
                </div>
                <div class="actons">
                    <button id="addtocart"><i class='bx bxs-cart'></i>cart</button>
                    <button id="iew">close</button>
                </div>
            </div>
        </div>
        <div  class="custom-modal">
            <div class="modal-content">
                <h2>Do you want to add this item to the cart?</h2>
                <button class="modal-btn" onclick="closeModal()">Cancel</button>
                <button class="modal-btn"  id="added">Add to Cart</button>
            </div>
        </div>

       <script>
        var search = document.getElementById("search");
        console.log(search);
        search.addEventListener("input", () => {
            let qry = search.value.toLowerCase();
            check(qry);
        });

        function check(qry) {
            let main = document.querySelector('.maxi');
            let nodelist = main.querySelectorAll('.card');
            nodelist.forEach(lst => {
                let chk = lst.querySelector('.card-content h2').textContent.toLowerCase();
                if (chk.includes(qry)) {
                    lst.style.display = "block";
                } else {
                    lst.style.display = "none";
                }
            });
        }
	var fk=0;
        var togbtn = document.querySelectorAll('.view');
        console.log(togbtn);
        togbtn.forEach(btn => {
            btn.addEventListener('click', () => {
                let cls = document.querySelector('.detail-show');
                var cardImage = btn.closest('.card').querySelector('img');
                var cardprice = btn.closest('.card').querySelector('.card-content span');
                console.log(btn.value);
                var cardName = btn.closest('.card').querySelector('.card-content h2').textContent;
                var cardPrice = btn.closest('.card').querySelector('.card-content h3').textContent;
                var detailsName = document.querySelector('.detail-show .raw ul li:nth-child(1) span');
                var detailsPrice = document.querySelector('.detail-show .raw ul li:nth-child(2) span');
                detailsName.textContent = cardName;
                detailsPrice.textContent = cardPrice;
                var detailsImage = document.querySelector('.detail-show img');
                detailsImage.src = cardImage.src;
                cls.classList.add('toggle');
                let get = document.getElementById('addtocart');
                get.addEventListener('click', () => {
                    let ack = document.querySelector('.custom-modal');
                    ack.style.display = 'block';
                });
                fk = btn.value;
                
            });
        });
        let see = document.getElementById('added');
        see.addEventListener('click', () => {
            window.location.href = "addtocart?id="+fk;
        });
        document.getElementById('iew').addEventListener('click', () => {
            let cls = document.querySelector('.detail-show');
            cls.classList.remove('toggle');
        });

        function closeModal() {
            let ack = document.querySelector('.custom-modal');
            ack.style.display = 'none';
        }
    </script>
    </section>
            
            
            
            
      <style>

            .maxi {
                display: flex;
                justify-content: center;
                flex-wrap: wrap;
                gap: 1.5rem;
                margin-top: 50px;
            }

            .card {
                position: relative;
                width: 400px;
                height: 300px;
                background-color: #f0f0f0;
                border-radius: 10px;
                overflow: hidden;
                /* padding: 5px; */
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                transition: transform 0.2s ease;
            }

            .card:hover {
                transform: scale(1.02);
            }

            .card img {
                width: 100%;
                height: 65%;
                object-fit: cover;
            }

            .card-content {
                /* position: absolute; */
                top: 0;
                background-color: #fff;
                padding: 10px;
                height: 35%;
                display: flex;
                align-items: center;
                justify-content: space-between;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                box-sizing: border-box;
            }

            .card-content h3 {
                /* font-size: 20px; */
                margin: 2px 0;
            }

            .card-content h2 {
                text-transform: uppercase;
                list-style: none;
                margin: 0;
            }

            .card-content button {
                background-color: #ff6600;
                color: #fff;
                border: none;
                padding: 10px 40px;
                border-radius: 5px;
                font-size: larger;
                cursor: pointer;
            }

            .card-content button:hover {
                background-color: orangered;
            }
            .main-section {
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            /* background-color: rgb(255, 233, 220); */
            margin: 5px;
        }

        .main-section input {
            margin: 5px;
            width: max(40%, 300px);
            padding: 10px;
            outline: none;
            border: 2px solid rgb(138, 108, 94);
            /* text-align: start; */
            background: transparent;
            transition: .2s ease;
            border-radius: 11px;
            font-size: 1rem;
            box-sizing: border-box;
        }

        .main-section input:focus {
            border: 2px solid rgb(255, 97, 18);
            box-shadow: 0px 0px 8px rgb(248, 98, 34);
            background: rgb(255, 255, 255);
        }
        
           .detail-show {
                transform: translateX(150%);
                height: 90%;
                width: 350px;
                position: fixed;
                right: 10px;
                top: 5%;
                display: flex;
                flex-direction: column;
                padding: 10px;
                transition: transform .5s ease;
                box-sizing: border-box;
                border-radius: 10px;
                background-color: antiquewhite;
                box-shadow: 0px 0px 10px rgb(46, 46, 46);
            }

            .detail-show img {
              border-radius: 10px;
                height: 220px;
                object-fit: cover;
     
            }

            .detail-show .raw ul {
                list-style: none;
                padding-left: 15px;
            }

            .detail-show .raw ul span {
                font-weight: normal;
            }

            .details-content {
                display: flex;
                flex-direction: column;
                justify-content: center;
                gap: 1.5rem;
                align-items: baseline;
            }

            .details-content .actons {
                width: 100%;
                display: flex;
                flex-direction: column;
                box-sizing: border-box;
                padding: 5px;
                gap: .5rem;
                justify-content: space-evenly;
            }

            .details-content button {
                background-color: #ff6600;
                color: #fff;
                border: none;
                padding: 10px;
                border-radius: 10px;
                font-size: larger;
                cursor: pointer;
                display: flex;
                justify-content: center;
                gap: .5rem;
                align-items: center;
            }

            .details-content button:hover {
                background-color: orangered;
            }

            .toggle {
                transition: .5s ease;
                transform: translateX(0%);
            }

</style>      
<br>
<br>
<br>
<br>

   <%@ include file="footer.jsp" %> 
</body>
</html>
    