<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
  
</head> 
<body> 
 
 <%@ include file="restnavbar.jsp" %>
<br> 

  <h1 align="center">ALL-ITEMS  &nbsp;&nbsp; </h1>
    <div class="main-section">

            <input type="text" placeholder="enter name" id="search">
        </div>
     <div class="maxi">
    <c:forEach items="${itemlst}"  var="itm">   
    
    <div class="card">
      <img src='displayitemimage?id=${itm.id}' alt="Food Image">
      <div class="card-content">
          <div>
              <h2>${itm.name}</h2>
              <h3>Price: $10.99 </h3>
              <h3>Rating: 4.5</h3>
          </div>
      </div>
  </div>
    </c:forEach> 
  </div>
  
      <script>
            var search = document.getElementById("search")
            console.log(search);
            search.addEventListener("input", () => {
                let qry = search.value.toLowerCase();
                check(qry)
            })

            function check(qry) {
                let main = document.querySelector('.maxi')
                // console.log(main);
                let nodelist = main.querySelectorAll('.card')
                nodelist.forEach(lst => {
                    let chk = lst.querySelector('.card-content h2').textContent.toLowerCase()
                    console.log(chk);
                    if (chk.includes(qry)) {
                        lst.style.display = "block";
                    }
                    else {
                        lst.style.display = "none";
                    }
                })
            }
        </script>
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
                height: 250px;
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
        </style>

    </main>
 
  <style>
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
    </style> 
  

</body>
</html>

</body> 
</html>