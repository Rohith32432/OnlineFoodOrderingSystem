
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<html>

<style>
    body {
      overflow-x: hidden;
      margin: 0;
      /* background-color: rgb(33, 51, 51); */
      scroll-behavior: smooth;
    }

    .total {
      position: relative;
      top: 0px;
      display: flex;
      flex-direction: row;
      justify-content: space-around;
      align-items: center;
      /* background-color: rgb(152, 152, 152); */
    background-color: #fff2ea;
      height: max-content;
      width: 100%;
      transition: .3s ease;
      z-index: 999;
    }

    nav {
      display: flex;
      justify-content: center;
      z-index: 9999;
    }

    .total-style {
      position: fixed;
      margin: 5px;
      width: 90%;
      border-radius: 8px;
      background-color: #fff;
      box-shadow: 0px 0px 10px black;
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
      /* transform: translateX(20%); */

    }

    .nav-inside {
      font-size: medium;
      text-transform: uppercase;
      font-weight: 500;
      text-decoration: none;
      font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
      box-sizing: border-box;
      margin-right: 15px;
      /* color: rgb(255, 255, 255); */
      transition: 0.5s;
      color: black;
    }

    .nav-container .nav-inside:hover {
      color: orangered;
      transform: scale(1.06);
    }

    .nav-container .nav-inside::after {
      display: block;
      content: ' ';
      right: 0;
      height: 2px;
      transition: width 0.3s ease 0s;
      width: 0px;
      transition: 0.5s;
    }

    .nav-container .nav-inside:hover::after {
      width: 70%;
      /* left: 0; */
      background-color: rgba(255, 27, 27, 0.954);
    }

    .nav-menu {
      display: none;
    }

    @media only screen and (max-width: 900px) {
      .nav-menu {
        display: block;
        position: absolute;
        right: 10%;
        box-sizing: border-box;
        cursor: pointer;
        z-index: 2;
      }

      .nav-container {
        width: 50%;
        height: 100%;
        background: rgba(255, 255, 255, 0.242);
        position: fixed;
        inset: 0;
        z-index: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 4rem;
        backdrop-filter: blur(8px);
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
    nav .total .profile {
      background-color: rgb(0, 174, 255);
      cursor: pointer;
      height: 50px;
      width: 50px;
      border-radius: 50px;
    }

    nav .total .profile .fulldrp {
      display: flex;
      box-shadow: 0px 3px 10px rgba(28, 28, 28, 0.491);
      border-radius: 5px;
    }

    nav .profile .dp-down {
      display: none;
      transform: translateX(-60%);
      flex-direction: column;
      position: absolute;
      top: 10px;
      height: max-content;
      width: 130px;
      justify-content: center;
      background-color: rgb(134, 133, 132);
      position: relative;

    }

    nav .profile .dp-down a:hover {
      color: orangered;
      background-color: aliceblue;
    }

    nav .profile .dp-down a {
      font-size: 1.2rem;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      text-transform: capitalize;
      padding: 10px;
      margin: 5px;
      text-decoration: none;
      color: aliceblue;
    }

    nav .profile-photo img {
      height: 100%;
      object-fit: cover;
      width: 100%;
      border-radius: 50px;
    }
       nav .profile-photo {
        height: 100%;
    }
  </style>

<nav>
    <div class="total">
      <div class="nav-menu">
        <img src="menu.png" alt="" id="btn" height="25">
      </div>
      <div class="logo">
        <h1>have it..</h1>
      </div>
      <div class="nav-container">
        <a href="resindex" class="nav-inside ">Home</a>
        <a href="additems" class="nav-inside">ADD ITEMS</a>
        <a href="deleteitems" class="nav-inside">DELETE ITEMS</a>
        <a href="viewitems" class="nav-inside">VIEW ALL ITEMS</a>
        
      </div>
      <div class="profile">
        <div class="profile-photo" id="prf">
          <img src="displayrestimage?id=${id}" alt="">

        </div>
        <div class="dp-down" id="dpdown">
          <a href="updaterest">profile</a>
          <a href="#">darkmode</a>
          <a href="restlogout">Logout</a>
        </div>
      </div>
    </div>

  </nav>

  <script>
    var dpd = document.getElementById("prf")
    dpd.addEventListener('click', () => {
      let drp = document.getElementById("dpdown");
      drp.classList.toggle("fulldrp")
    })
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
      else if (prevScrollPos > currentScrollPos) {
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

</html>