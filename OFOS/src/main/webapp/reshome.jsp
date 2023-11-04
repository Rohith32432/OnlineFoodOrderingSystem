<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant</title>
    <link rel="stylesheet" href="resabove.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

    <nav>
        <div class="total">
            <div class="menu">
                <img src="menu.png" alt="cc" id="men" height="25">
            </div>
            <div class="logo">
                <!-- <img src="./static/icon.jpg" alt="" height='30'>  -->
                <h3>have it..</h3>
            </div>
            <div class="nav-container">
                
                <a href="reshome" class="inside">Add Restaurant</a>
                <a href="customerreg" class="inside">Enter</a>
                <a href="index.jsp" class="inside">Home</a>
            </div>
                
            </div>

         
        </nav>
        
        <script>
             var x = document.getElementById('men');
        var count = 0;
        const links = document.querySelectorAll('.inside');

        links.forEach(link => {
            link.addEventListener('click', (event) => {
                links.forEach(link => link.classList.remove('activex'));
                event.currentTarget.classList.add('activex');
            });
        });

        x.addEventListener('click', () => {
            let a = document.querySelector('.nav-container');
            a.classList.toggle('active');
            if (count == 0) {
                x.src = 'close.png';
                x.style.height = '30px';
                count++;
            } else {
                x.src = 'menu.png';
                x.style.height = '25px';
                count--;
            }
        });
        </script>





    <div class="abstract">
        <h1>Add Restaurant</h1>
        <img src="https://t3.ftcdn.net/jpg/05/66/54/16/360_F_566541693_WljU6enGuKCBVEn9vXhdCXL4uZ7wb6Xb.jpg" alt="">
        <div class="btns">
            <button type="button" class="btn " id="btn">Register</button>
            <button type="button" class="btn " id="log-btn">Login</button>
        </div>
    </div>
    <!-- <img src="delivery.jpg" alt="">          -->
    <div class="reg-active">
       <div class="reg-form">
            <h3>Registration Form</h3>
            <form method="post" action="addres" enctype="multipart/form-data">
                <label for="num">Name</label>
                <input type="text" name="name" placeholder="Enter number" id="num" required="required">
                <label for="mail">Email</label>
                <input type="email" name="email" id="mail" required="required">
                <label for="pass">Password</label>
                <input type="password" name="pwd" placeholder="Enter password" id="pass" required="required">
                <label for="img"> choose file</label>
                <input type="file" name="image" id="img" required="required">
                <label for="num">Number</label>
                <input type="text" name="contact" placeholder="Enter number" id="cnum" required="required">
                <label for=""> location</label>
                <input type="text" name="location" required="required">
               <div class="validate">
              <button id="status">Submit</button> 
               <h3 id="show"></h3>
               </div>
            </form>
        </div>
        <div class="login-form">
            <h3>Login Form</h3>
            <form method="post" action="checkrestlogin">
                <label for="login-mail">Email</label>
                <input type="email" name="email" id="login-mail" required="required">
                <label for="pwod">Password</label>
                <input type="password" name="pwd" placeholder="Enter password" id="pwod" required="required">
                <button>login</button>
            </form>
        </div>
    </div>
    <script>
        var regBtn = document.getElementById('btn');
        var logBtn = document.getElementById('log-btn');
        var regForm = document.querySelector('.reg-form');
        var loginForm = document.querySelector('.login-form');
        var activeDiv = document.querySelector('.reg-active');

        regBtn.addEventListener('click', () => {
            activeDiv.style.display = 'flex';
            regForm.style.display = 'block';
            loginForm.style.display = 'none';
            
        });

          // y.children[0].style.display='none';
        logBtn.addEventListener('click', () => {
            activeDiv.style.display = 'flex';
            regForm.style.display = 'none';
            loginForm.style.display = 'block';
        });
          // y.children[1].style.display='none'; bot ga;''
        activeDiv.addEventListener('click', (event) => {
            if (event.target.className === 'reg-active') {
                activeDiv.style.display = 'none';
            }
        });
          
        var chkmail=document.getElementById('mail')
        var set=document.getElementById('show')
        var chkpwd=document.getElementById('pass');
        var chknum=document.getElementById('cnum');
        
        const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        chkmail.addEventListener('input',(event)=>{
          set.textContent="email"
          let sample=event.target.value
          console.log(sample);
          const testemail=emailRegex.test(sample);
          if(testemail)
          {
            set.style.color='green'
            set.textContent="email 😊"
          }
          else {
          set.style.color='red'
          }

        })
        const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
        chkpwd.addEventListener('input',(event)=>{
          set.textContent="password 👎"
          let inpwd=event.target.value;
          if(passwordRegex.test(inpwd))
          {
            set.style.color='green'
            set.textContent="password 👍"
          }
          else  {
        	  set.style.color='red'
        	  
          }
        })
        chknum.addEventListener('input',(event)=>{
          set.textContent="number"
          let innum=event.target.value;
         
          if(innum.length==10)
          {
            set.style.color='green'
            set.textContent="number 👍"

          }
          else  set.style.color='red'
        })
    </script>


<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Food Lover</title>
    <!-- CSS -->
    <link rel="stylesheet" href="reshome.css" />
  </head>
  <body>
  
    <!-- About -->
    <div class="section" id="about">
      <div class="container flex">
        <div class="visual">
          <img src="https://raw.githubusercontent.com/programmercloud/foodlover/main/img/about.png" alt="" />
        </div>
        <div class="text">
          <div class="secondary">About Our Restaurant Partners</div>
          <h2 class="primary">150+</h2>

          <h3 class="tertiary">Partners</h3>

          <p>
            Become a part of our culinary family as a restaurant partner. 
            Join our platform and share your unique flavor story, from cozy hideaways to trendy hotspots, 
            and help define our exceptional dining experience.
          </p>

          <a href="#menu" class="btn">Explore Menu</a>
        </div>
      </div>
    </div>
    <!-- End About -->

    
    

    



    <!-- Ion Icons Js -->
    <script
      type="module"
      src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.esm.js"
    ></script>
    <script
      nomodule
      src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.js">
    </script>
<%@ include file="footer.jsp" %>    
  </body>
</html>


</body>
</html>
