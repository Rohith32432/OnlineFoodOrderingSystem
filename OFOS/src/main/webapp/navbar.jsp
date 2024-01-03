
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RES-NAV</title>
</head>

<body>

    <nav>
        <div class="total">
            <div class="nav-menu">
                <img src="menu.png" alt="" id="btn" height="25">
            </div>
            <div class="logo">
               <h1>have it..</h1>
            </div>
            <div class="nav-container">
                <a href="reshome" class="nav-inside ">ADD RESTAURANT</a>
                <a href="customerreg" class="nav-inside">ENTER</a>
                <a href="#abtotal" class="nav-inside">ABOUT</a>
                
            </div>

        </div>

    </nav>

    <script>
        var x = document.getElementById('btn');
        var count = 0;
        const links = document.querySelectorAll('.nav-inside');

        links.forEach(link => {
            link.addEventListener('click', (event) => {
                links.forEach(link => link.classList.remove('nav-activex'));
                event.currentTarget.classList.add('nav-activex');
            });
        });

        x.addEventListener('click', () => {
            let a = document.querySelector('.nav-container');
            a.classList.toggle('nav-active');
            if (count == 0) {
                x.src = 'close.png';
                x.style.height = '30px';
                document.querySelector('.total').classList.remove('total-style')

                count++;
            } else {
                x.src = 'menu.png';
                x.style.height = '25px';
                count--;
            }
        });

        let prevScrollPos = window.pageYOffset;
        window.onscroll = function () {
            let currentScrollPos = window.pageYOffset;
            if (currentScrollPos == 0) {
                document.querySelector('.total').classList.remove('total-style')

            }
           else  if (prevScrollPos > currentScrollPos) {
                document.querySelector('.total').style.top = '0px';
                document.querySelector('.total').classList.add('total-style')
            } else {
                document.querySelector('.total').style.top = '-100px';
            }
            console.log(prevScrollPos);
            prevScrollPos = currentScrollPos;
            console.log(prevScrollPos);
        }
    </script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Agdasima&family=Dancing+Script:wght@700&family=Kaushan+Script&family=Pacifico&family=Rajdhani:wght@600&display=swap');

body {
  overflow-x: hidden;
  margin: 0;
  scroll-behavior: smooth;
}

.total {
  position: fixed;
  top: 0px;
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  align-items: center;
  /* background-color: rgb(152, 152, 152); */
  z-index: 99;
  height: 8%;
  width: 100%;
  transition: .3s ease;
}

nav {
  display: flex;
  justify-content: center;
}

.total-style {
  margin: 5px;
  width: 90%;
  border-radius: 8px;
  background-color: rgba(32, 32, 32, 0.788);
  backdrop-filter: blur(5px);
}

.logo {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  color: #fff;
  text-transform: capitalize;
  font-size: 1.2rem;
}

.logo img {

  height: 70%;
  width: 100%;
  cursor: pointer;
}

.nav-inside.nav-activex {
  color: orangered;
}

.nav-container {
  display: flex;
  gap: 1rem;
  transform: translateX(70%);

}

.nav-inside {
  font-size: medium;
  text-transform: uppercase;
  font-weight: 500;
  text-decoration: none;
  font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  box-sizing: border-box;
  margin-right: 15px;
  color: rgb(255, 255, 255);
  transition: 0.5s;
}

.nav-container .nav-inside:hover {
  color: orangered;
  transform: scale(1.06);
}

.nav-container .nav-inside::after {
  display: block;
  content: ' ';
  height: 2px;
  transition: width 0.3s ease 0s;
  width: 0px;
  transition: 0.5s;
}

.nav-container .nav-inside:hover::after {
  width: 100%;
  left: 0;
  background-color: rgba(255, 27, 27, 0.954);
}

.nav-menu {
  display: none;
}

@media only screen and (max-width: 900px) {
  .total {
    z-index: 99;
  }

  .nav-menu {
    display: block;
    position: absolute;
    right: 10%;
    box-sizing: border-box;
    cursor: pointer;
    z-index: 1;
  }

  .nav-container {
    position: fixed;
    width: 50%;
    height: 100%;
    background: rgba(0, 0, 0, 0.632);
    backdrop-filter: blur(5px);
    inset: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 4rem;
    /* to get the transition */
    transform: translateX(200%);
    transition: all 0.2s linear;
    flex-direction: column;
    opacity: 0;
  }

  .nav-active {
    transform: translateX(100%);
    opacity: 1;
    right: 0;
    visibility: visible;
  }
}


.bootstrap-btn {
  display: inline-block;
  font-weight: 400;
  color: #212529;
  text-align: center;
  border: 1px solid transparent;
  padding: .375rem .75rem;
  font-size: 1rem;
  line-height: 1.5;
  border-radius: .25rem;
  color: #fff;
  background-color: #ff5100;
  margin: 5px;
  cursor: pointer;
}

.bootstrap-btn:hover {
  background-color: #d94100;
}

.bootstrap-btn:active {
  background-color: #d94100;
  box-shadow: 0 0 0 0.2rem rgba(255, 60, 0, 0.324);
  transform: scale(.95);
}

.bootstrap-btn:focus,
.bootstrap-btn.focus {
  box-shadow: 0 0 0 0.2rem rgba(255, 85, 0, 0.304);
}
</style>

</body>

</html>