<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title> An About Us Page | CoderGirl </title>
  <!---Custom Css File!--->
  
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
.about-us{
  height: 100vh;
  width: 100%;
  padding: 90px 0;
  background: #ddd;
}
.pic{
  height: auto;
  width:  302px;
}
.about{
  width: 1130px;
  max-width: 85%;
  margin: 0 auto;
  display: flex;
  align-items: center;
  justify-content: space-around;
}
.text{
  width: 540px;
}
.text h2{
  font-size: 90px;
  font-weight: 600;
  margin-bottom: 10px;

}
.text h5{
  font-size: 22px;
  font-weight: 500;
  margin-bottom: 20px;
}
span{
  color: #4070f4;
}
.text p{
  font-size: 18px;
  line-height: 25px;
  letter-spacing: 1px;
}
.data{
  margin-top: 30px;
}
.hire{
  font-size: 18px;
  background: #4070f4;
  color: #fff;
  text-decoration: none;
  border: none;
  padding: 8px 25px;
  border-radius: 6px;
  transition: 0.5s;
}
.hire:hover{
  background: #000;
  border: 1px solid #4070f4;
}
</style>
<body>
<%@ include file="dboynavbar.jsp" %>

  <section class="about-us">
    <div class="about">
      <img src="data:image/jpeg;base64,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" class="pic">
      <div class="text">
        <h2>About Us</h2>
        <h5>Food delivery and <span>Smile Delivery</span></h5>
         <p>Welcome to haveit - Your Trusted Delivery Partner

At haveit, we take pride in our commitment to efficient and reliable delivery services. Our story is one of dedication, determination, and a passion for serving our customers and communities.</p>
        
      </div>
    </div>
  </section>
</body>
</html>