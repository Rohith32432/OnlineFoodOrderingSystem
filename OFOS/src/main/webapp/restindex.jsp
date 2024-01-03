<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
        body{
            margin: 0;
            overflow-x: hidden;
        }
        .banner{
            position: relative;
            height: 50vh;
            display:block;
            box-shadow: 0px 0px 8px  black;
            width: 100%;
        }
        .pic{
            position: absolute;
            inset: 0;
        }
        .pic img{
            object-fit: cover;
            width: 100%;
            z-index: -1;
            height: 100%;
        }
        .back{
            position: absolute;
            inset: 0;
            background: linear-gradient(180deg, rgba(0, 0, 0, 0.61) 40%, rgba(43, 43, 43, 0.427) 90%);    
            color: whitesmoke;
            display: flex;
            justify-content: space-between;
            padding: 50px;
            padding-bottom: 0px;
            align-items: center;
        }
        .resdetails{
            text-transform: capitalize;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            animation: intro1 1.2s forwards ;
        }
        .resdetails h1{
            font-size: 2.5rem;
        }
        .details{
            display: flex;
            flex-direction: column;
           align-items: end; 
           gap: 1rem;
           text-transform: capitalize;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .details h3{
            margin: 0;
            animation: intro 1.5s forwards ;
        }
       
        @keyframes intro {
            from{
                transform: translateX(200%);
            }
            to{
                transform: translateX(0%);
            }
        }
        @keyframes intro1 {
            from{
               opacity: 0;
               filter: blur(5px);
            }
            to{
                opacity: 1;
            }
        }
        @media only screen and (max-width: 700px) {
            .back{
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }
            .resdetails h1{
                font-size: 2rem;
            }
            .resdetails h3{
                display: none;

            }
            .details{
                flex-direction: row;
                align-items: center;
                font-size: .8rem;
            }
            .details h3{
                animation: intro1 2s forwards ;
            }

        }
        </style>
<%@ include file="restnavbar.jsp" %>
   <div class="banner">
        <div class="pic">
            <img src="displayrestimage?id=${res.id}" alt="">
            <div class="back">
                <div class="resdetails">
                <h1>${res.name}</h1>
                <h3>${res.location}</h3>
                </div>
                <div class="details">    
                    <h3>${res.email}</h3>
                        <h3>${res.contactno}</h3>
                </div>
            </div>
        </div>

    </div>
    
<br>
<br>
<br>    
<%@ include file="footer.jsp" %>
</body>
</html>