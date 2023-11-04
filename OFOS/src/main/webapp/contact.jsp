<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <meta charset="ISO-8859-1">
  <title>CONTACT US</title>
  <style>
    body {
      background-image: url("./static/contact.jpg");
      background-size: cover;
    }
  
    .contact-section {
      text-align: left;
      color: #fff;
      padding: 20px;
      font-size: 24px;
    }
  
    .contact-section h2 {
      font-size: 30px;
      margin-bottom: 10px;
    }
  
    .contact-section p {
      font-size: 24px;
      margin-bottom: 20px;
    }

    .contact-section p.line {
      font-size: 28px;
      margin-bottom: 20px;
      border-bottom: 2px solid #fff;
      display: inline-block;
    }
  
    .social-icons {
      margin-top: 20px;
    }
  
    .social-icons h2 {
      font-size: 30px;
    }
  
    .social-icons a {
      display: inline-block;
      margin: 10px;
      font-size: 36px;
      color: #000;
      background-color: #fff;
      border-radius: 50%;
      padding: 10px;
      transition: background-color 0.3s;
    }
  
    .social-icons a:hover {
      background-color: #00f;
      color: #fff;
    }
  
    .email-link {
      color: #000;
      text-decoration: none;
      background-color: #fff;
      padding: 10px;
      border-radius: 5px;
      transition: background-color 0.3s;
    }
  
    .email-link:hover {
      background-color: #00f;
      color: #fff;
    }
    
    .whatsapp-link {
      color: #fff;
      text-decoration: none;
      background-color: #25D366;
      padding: 10px;
      border-radius: 5px;
      transition: background-color 0.3s;
    }
  
    .whatsapp-link:hover {
      background-color: #128C7E;
    }

    .telegram-link {
      color: #fff;
      text-decoration: none;
      background-color: #0088cc;
      padding: 10px;
      border-radius: 5px;
      transition: background-color 0.3s;
    }
  
    .telegram-link:hover {
      background-color: #006699;
    }
    
    .mobile-button {
      display: inline-block;
      background-color: #fff;
      color: #000;
      padding: 10px;
      border-radius: 5px;
      text-decoration: none;
      transition: background-color 0.3s;
    }
  
    .mobile-button:hover {
      background-color: #00f;
      color: #fff;
    }
    
    .social-icons a[href="https://www.instagram.com/phanicharan04"]:hover {
    background-color: #d6249f;
  }
  </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<br>
  <div class="contact-section">
    <h2>CONTACT OUR TEAM</h2>
    <p class="line"></p>
    <p>Call us directly here by Link, WhatsApp, Telegram, or Skype:</p>
    <p>Mobile: <a href="tel:+919490837719" class="mobile-button">9490837719</a></p>
    <p>Mail us your request:</p>
    <p><a href="https://mail.google.com//mail/?view=cm&fs=1&tf=1&to=reddy.phanicharan116@gmail.com" class="email-link" target="_blank">reddy.phanicharan116@gmail.com</a></p>

    <p>Chat with us your issues:</p>
    <p>WhatsApp: <a href="https://wa.me/919014957839" class="whatsapp-link" target="_blank">Open WhatsApp</a></p>
    <p>Telegram: <a href="https://t.me/K_Rohith" class="telegram-link" target="_blank">Open Telegram</a></p>
    <div class="social-icons">
      <h2>Connect with us on social media:</h2>
      <a href="https://www.instagram.com/phanicharan04" target="_blank">
        <i class="fab fa-instagram"></i>
      </a>
      <a href="https://www.facebook.com/phanicharan.udumula" target="_blank">
        <i class="fab fa-facebook-f"></i>
      </a>
    </div>
  </div>
</body>
</html>
