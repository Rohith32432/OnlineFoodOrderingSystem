<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<html> 
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
    body {
        background: linear-gradient(45deg, #FF5733 0%, #FF5733 50%, #fff 50%);
        text-align: center;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    

    .container {
        background: white;
        border: 1px solid #0077B6;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin: 45px;
        display: inline-block;
        text-align: center;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        border: 1px solid #0077B6;
    }

    th, td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #0077B6;
    }

    th {
        background-color: #FF5733;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #FF5733; /* Alternate row background color */
    }

   <style>
    /* Other styles... */

    .delete-link {
        text-decoration: none;
        color: #FF5733; /* Change the text color to orange */
        font-weight: bold; /* Make the text bold */
    }
</style>


</head>
<body>
   <%@ include file="restnavbar.jsp" %>
    <br>
    <div class="container">
        <div class="header">Delete Items</div>
        <div class="table-container">
            <table>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>PRICE</th>
                    <th>ACTION</th>
                </tr>
                <c:forEach items="${itemdata}" var="item">
                    <tr>
                        <td><c:out value="${item.id}" /></td>
                        <td><c:out value="${item.name}" /></td>
                        <td><c:out value="${item.price}" /></td>
                        <td>
                            <a href='<c:url value="deleteitem/${item.id}"></c:url>' class="delete-link">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>