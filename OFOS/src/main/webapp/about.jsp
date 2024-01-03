
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="about.css">
</head>

<body>
    
    <div id="abtotal">
        <div class="xcontainer">
            <img src="./static/phani.jpg" alt="">
            <div class="inside">
                <div class="content">
                    <h1>Phani Charan</h1>
                    <p>Team Leader and Customer Module Developer</p>
                </div>
            </div>
            <div class="xsocial">
                <a href="https://www.linkedin.com/in/venkata-phani-charan-reddy-udumula-928125221/" target="_blank">
                  <div class="sub" ><i class='bx bxl-linkedin' style="--i:.8s"></i></div>
                 </a>
                <a href="https://t.me/PhaniCharan" target="_blank">
                  <div class="sub" ><i class='bx bxl-telegram' style="--i:1s"></i></div>
                </a>
                </a>
                <a href="https://www.instagram.com/phanicharan04/" target="_blank">
                <div class="sub" ><i class='bx bxl-instagram' style="--i:.4s"></i></div>
                </a>
            </div>
        </div>
        <div class="xcontainer">
            <img src="./static/rohith.jpg" alt="">
            <div class="inside">
                <div class="content">
                    <h1>Rohith</h1>
                    <p>Restaurant Module Developer</p>
                </div>
            </div>
            <div class="xsocial">
                <a href="https://www.linkedin.com/in/rohith-k-13063324b/" target="_blank">
                  <div class="sub" ><i class='bx bxl-linkedin' style="--i:.8s"></i></div>
                 </a>
                <a href="https://t.me/K_Rohith" target="_blank">
                  <div class="sub" ><i class='bx bxl-telegram' style="--i:1s"></i></div>
                </a>
                </a>
                <a href="https://www.instagram.com/rohith.10/" target="_blank">
                <div class="sub" ><i class='bx bxl-instagram' style="--i:.4s"></i></div>
                </a>
            </div>
        </div>
        <div class="xcontainer">
            <img src="./static/manoj.jpg" alt="">
            <div class="inside">
                <div class="content">
                    <h1>Manoj Teja</h1>
                    <p>Admin Module Developer</p>
                </div>
            </div>
            <div class="xsocial">
                <a href="https://www.linkedin.com/in/manoj-teja-patcha-3b211b226/" target="_blank">
                  <div class="sub" ><i class='bx bxl-linkedin' style="--i:.8s"></i></div>
                 </a>
                <a href="https://t.me/ManojTejaPatcha" target="_blank">
                  <div class="sub" ><i class='bx bxl-telegram' style="--i:1s"></i></div>
                </a>
                </a>
                <a href="https://www.instagram.com/manoj_teja_patcha/" target="_blank">
                <div class="sub" ><i class='bx bxl-instagram' style="--i:.4s"></i></div>
                </a>
            </div>
        </div>

    </div>
</body>

<script>
  // Smooth scrolling when clicking on anchor links
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
      e.preventDefault();

      const targetId = this.getAttribute('href').substring(1);
      const targetElement = document.getElementById(targetId);

      if (targetElement) {
        window.scrollTo({
          top: targetElement.offsetTop,
          behavior: 'smooth',
        });
      }
    });
  });
</script>


</html>