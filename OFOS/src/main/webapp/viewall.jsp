<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rectangle Card</title>
</head>
<body>
<%@ include file="../custnavbar.jsp" %>
<div class="banner">
      <img src="https://c4.wallpaperflare.com/wallpaper/407/764/990/restaurant-cafes-urban-city-wallpaper-preview.jpg" alt="">
      <div class="ban-context">
        <h1><span>${cname}</span> welcome to have it</h1>
      </div>

    </div>
<div class="main-section">
        <input type="text" id="searchInput" placeholder="Search for items...">
    </div>
<div class="emo"><h1 align="center">Top Restaurants</h1>
<div class="card-section">
<c:forEach items="${resdata}"  var="emp"> 
  
      <div class="res-card">
        <img src="displayrestimage?id=${emp.id}" alt="Food Image">
        <div class="bg"></div>
        <div class="res-content">
          <h1>${emp.name} </h1>
           <a href="specitems?id=${emp.id}">  <button>Click Me</button></a>
        </div>
      </div>
</c:forEach> 
  </div> 
</div>
    <h1 align="center">ALL-ITEMS  &nbsp;&nbsp;</h1>

     <div class="maxi">
    <c:forEach items="${item}"  var="itm"> 	
    
    <div class="card">
      <img src="${itm.url}" alt="Food Image">
      <div class="card-content">
          <div>
              <h2>${itm.name}</h2>
              <h3>Price: ${itm.price}/- </h3>
              <h3>Rating: 4.5</h3>
          </div>
           <a href="addtocart?id=${itm.id}">  <button class="card-button">Click Me</button></a>
      </div>
  </div>
    </c:forEach> 
  </div>
  
  <main>
        
        <script>
    var searchInput = document.getElementById("searchInput");
    var resCards = document.querySelectorAll('.res-card');
    var itemCards = document.querySelectorAll('.card');

    searchInput.addEventListener("input", function () {
        var query = searchInput.value.toLowerCase().trim();

        // Search and filter restaurant cards
        resCards.forEach(function (card) {
            var resName = card.querySelector('.res-content h1').textContent.toLowerCase();

            if (query === "" || resName.includes(query)) {
                card.style.display = "block";
            } else {
                card.style.display = "none";
            }
        });

        // Search and filter item cards
        itemCards.forEach(function (card) {
            var itemName = card.querySelector('.card-content h2').textContent.toLowerCase();

            if (query === "" || itemName.includes(query)) {
                card.style.display = "block";
            } else {
                card.style.display = "none";
            }
        });
    });
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
  
  
  
  
  
  
 
    
 <style>
    .card-section::-webkit-scrollbar {
      display: none;
    }

    .card-section {
      margin: 5px;
      width: 100%;
      overflow-x: scroll;
      white-space: nowrap;
      padding: 5px;
      display: flex;
      /* background-color: aqua; */
    }
    .emo > h1{
      font-size: 2rem;
      text-transform: uppercase;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      letter-spacing: 2px;
    }
    

    .res-card {
      position: relative;
      display: inline-block;
      width: 400px;
      height: 250px;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      transition: transform 0.2s ease;
      margin: 5px;
    }

    .res-card img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: .3s ease;
    }

    .res-card:hover button {
      transform: translateY(0);
    }

    .res-card:hover img {
      transform: scale(1.1);
    }

    .res-card .bg {
      position: absolute;
      inset: 0;
      background: linear-gradient(180deg, rgba(2, 0, 36, 0) 20%, rgba(0, 0, 0, 0.913) 89%);
    }

    .res-card .res-content {
      position: absolute;
      bottom: 0;
      color: white;
      width: 100%;
      padding: 10px;
      display: flex;
      align-items: center;
      justify-content: space-around;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      box-sizing: border-box;
      transition: 0.5s ease;
      flex-wrap: wrap;
    }

    .res-content h1 {
      animation: fade 2s ease forwards;
      margin: 15px;
    }

    @keyframes fade {
      from {
        opacity: 0;
      }

      to {
        opacity: 1;
      }
    }

    .res-content button {
      background-color: #ff4d00;
      color: #fff;
      border: none;
      padding: 10px 40px;
      border-radius: 5px;
      font-size: larger;
      cursor: pointer;
      transform: translateY(200%);
      transition: 0.4s ease;
    }


      .banner {
        height: 50vh;
        position: relative;
        display: block;
        z-index: 2;
      }

      .banner span {
        color: orangered;
      }

      .banner img {
        height: 100%;
        width: 100%;
        object-fit: cover;
        z-index: -1;
      }

      .ban-context {
        position: absolute;
        color: aliceblue;
        font-size: 1.5rem;
        text-transform: capitalize;
        display: flex;
        backdrop-filter: blur(2px);
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        align-items: center;
        justify-content: center;
        inset: 0;
        background: linear-gradient(180deg, rgba(0, 0, 0, 0.47) 40%, rgba(43, 43, 43, 0.427) 90%);
      }

      body {
        animation: fade 2s ease forwards;
      }

      @keyframes fade {
        from {
          opacity: 0;
        }

        to {
          opacity: 1;
        }

      }
    </style>
    <%@ include file="footer.jsp" %>
</body>
</html>
    