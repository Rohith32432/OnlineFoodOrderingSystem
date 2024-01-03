<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="logo.png">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="final.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index-Page</title>

</head>

<body>
<%@ include file="navbar.jsp" %>

    <div class="haveit">
        <div class="context">
            <h1>have it</h1>
            <div class="data">
                <div class="makeup">
                <span><i class='bx bxs-location-plus' id="clk"></i></span>
                <input type="text" id="search" class="form-control" placeholder="Enter your delivery location">
                 </div>
                <button id="Button" class=" bootstrap-btn">Search</button>
            </div>
            <p id="kl"></p>
        </div>
    </div>

    <section>
        <div class="how-it-work">
        </div>
        <div class="overview" id="about">
           <div class="visual">
               <img src="./static/together.jpg" alt="" />
           </div>
           <div class="text">
               <div class="secondary">About Our Restaurants(Clients)</div>
               <h2 class="primary">150+</h2>
               <h3 class="tertiary">Our Delicious Food</h3>
               <p>
                   Embark on a culinary journey to the finest dining experiences. For restaurant owners, we provide a path to success and growth. Let's turn your vision into reality and savor the taste of triumph together.<br>
                   <br>
                   Desire It, Attain It, Seize It!
               </p>
               <a href="customerreg" class="btn"><button>Explore Menu</button></a>
           </div>
       </div>
       <div class="main-tell" id="tell">
           <h1>TOP RESTAURANTS</h1>
                  <div class="tell"data-aos="fade-right">
               <div class="sec">
                   <img src="./static/kfc.jpg" alt="">
               </div>
               <div class="m-content">
                   <h1>KFC</h1>
                   <p>Finger Lickin' Good!<br>
                      It's 'finger lickin' good.
                   </p>
                   <a href="customerreg"><button>View</button></a>
               </div>
           </div>
       
           <div class="tell"data-aos="fade-left" >
               <div class="sec" style="order: 2;">
                   <img src="./static/dominos.jpg" alt="">
                 
               </div>
               <div class="m-content">
                   <h1>Domino's Pizza</h1>
                   <p>You Got 30 Minutes<br>
                      Oh yes we did!
                   </p>
                   <a href="customerreg"><button>View</button></a>
               </div>
           </div>
           <div class="tell"data-aos="fade-right">
               <div class="sec">
                   <img src="./static/bbq.jpg" alt="">
               </div>
               <div class="m-content">
                   <h1>Barbeque</h1>
                   <p>Barbeque Nation: Live the Kebab Lovers Dream<br>
                      Wish Grill Eat Repeat
                   </p>
                   <a href="customerreg"><button>View</button></a>
               </div>
           </div>
        </div>
 
       </section>


    <script>


      
        var search = document.getElementById('search');
        var co = document.getElementById('clk');
        const btn = document.getElementById('Button');
        var lat = 0;
        var lon = 0;

        co.addEventListener('click', () => {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition((pos) => {
                    lat = pos.coords.latitude;
                    lon = pos.coords.longitude;
                    search.placeholder = lat + ',' + lon;
                    btn.disabled = false;  // Enable the button after obtaining location
                }, (error) => {
                    console.error('Error getting location:', error);
                });
            } else {
                console.log("Geolocation is not supported by this browser.");
            }
        });

      
        btn.addEventListener('click', () => {
            var apiUrl = "https://nominatim.openstreetmap.org/reverse?format=json&lat=" + lat + "&lon=" + lon;
              fetch(apiUrl)
                  .then(response => response.json())
                  .then(data => {
                    if( data.display_name=='Soul Buoy')
                      document.getElementById('kl').innerHTML = "location temporarily out of service";
                    else
                        document.getElementById('kl').innerHTML = data.display_name;
                  })
                  .catch(error => console.error('Error:', error));
          });
    </script>
<%@ include file="about.jsp" %>
<%@ include file="footer.jsp" %>
</body>

</html>