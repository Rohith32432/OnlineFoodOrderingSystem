<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="chooseres.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title>Restaurant Menu</title>
</head>
<body>

<div class="profile-dropdown" style="float: right; margin-right: 20px;">
    <h3 align="right">
    <span class="profile-icon">
        <i class="fas fa-user"></i>
    </span>${cname} <i class="fa fa-caret-down"></i></h3>
    <div class="profile-dropdown-content">
        <a href="updateprofile">Profile</a>
        <a href="#cart">Cart</a>
        <a href="custlogout">Logout</a>
    </div>
</div>
    <header class="res-header">
        <h1>HOP IN TO YOUR DESIRED RESTAURANT</h1>
    </header>
    <div class="search-bar">
        <input type="text" id="searchInput" placeholder="Search for items...">
    </div>
    <section>
    </section>
    <h2>BEST TIFFINS</h2>
    <section id="tiffinsSection" class="res-items">
        <div class="res-item">
            <a href="tiffins.jsp">
            <img src="https://lh3.googleusercontent.com/p/AF1QipMx5Zjye_WOTyaayQg4a3-5bXfOQMQxRHHZ-kIE=w1080-h608-p-no-v0" alt="Item 1">
            </a>
            <h3>Varalakshmi Tiffins</h3>
        </div>
        
        <div class="res-item">
            <a href="tiffins.jsp">
            <img src="https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/roxfy7w4rinmghkxsphv" alt="Item 1">
            </a>
            <h3>Amaravathi Tiffins</h3>
        </div>

        <div class="res-item">
            <a href="tiffins.jsp">
                <img src="https://t3.ftcdn.net/jpg/05/33/82/34/360_F_533823407_h0wVzQub7h3b6OZVWE44BPf5E6SHndxI.jpg" alt="Item 1">
                </a>
            <h3>Krishna Tiffins</h3>
        </div>
    
        <div class="res-item">
            <a href="tiffins.jsp">
                <img src="https://b.zmtcdn.com/data/pictures/chains/9/18799249/063e676e4f416273cc3bbb2551ed3f9c.jpg" alt="Item 1">
                </a>
            <h3>Vachi Tiffins</h3>
        </div>
    </section>
    <h2>VEG AND NON-VEG RESTAURANTS</h2>
    <section id="vegNonVegSection" class="res-items">
        <div class="res-item">
            <a href="vnnonv.jsp">
            <img src="https://cdn.cancercenter.com/-/media/ctca/images/others/blogs/2023/06-june/blog-grilling-l.jpg" alt="Item 1">
            </a>
            <h3>Barbeque Nation</h3>
        </div>

        <div class="res-item">
            <a href="vnnonv.jsp">
            <img src="https://im.whatshot.in/img/2019/Dec/shutterstock-745161868-cropped-1-1576597412.jpg" alt="Item 1">
            </a>
            <h3>MOG</h3>
        </div>

        <div class="res-item">
            <a href="vnnonv.jsp">
            <img src="https://jajmaan.in/wp-content/uploads/2022/03/Untitled-design-3.png" alt="Item 1">
            </a>
            <h3>SWIFT GRAND</h3>
        </div>

        <div class="res-item">
            <a href="vnnonv.jsp">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2WQG6Rm3DlS8A-RN-U8WhbnvzgSZ6Fu9KbEILGm5Yq4xOUAjARqn3tEpSXgz9WcN_Rj0&usqp=CAU" alt="Item 1">
            </a>
            <h3>GRAND NAGARJUNA</h3>
        </div>
    </section>

    <h2>FOOD COURTS</h2>
    <section id="foodCourtsSection" class="res-items">
        <div class="res-item">
            <a href="ffs.jsp">
                <img src="https://content.jdmagicbox.com/comp/hyderabad/d5/040pxx40.xx40.200318194716.s8d5/catalogue/kfc-restaurant-hyderabad-kfc-xd1mdf6kky.jpg?clr=" alt="Item 1">
                </a>
            <h3>KFC</h3>
        </div>

        <div class="res-item">
            <a href="ffs.jsp">
                <img src="https://c4.wallpaperflare.com/wallpaper/1017/647/742/food-pizza-still-life-hd-wallpaper-preview.jpg" alt="Item 1">
                </a>
            <h3>Pizza World</h3>
        </div>

        <div class="res-item">
            <a href="ffs.html">
                <img src="https://b.zmtcdn.com/data/pictures/chains/2/97262/9af382c9e173a2a16345231335445fbe.png?fit=around|750:500&crop=750:500;*,*" alt="Item 1">
                </a>
            <h3>Mc Donalds</h3>
        </div>

        <div class="res-item">
            <a href="ffs.jsp">
                <img src="https://media-cdn.tripadvisor.com/media/photo-s/11/ad/84/e4/the-shawarma-co-is-all.jpg" alt="Item 1">
                </a>
            <h3>Shawarma & Co</h3>
        </div>
        
        
    </section>
    
    
    
    <script src="chooseres.js"></script>
</body>
</html>
