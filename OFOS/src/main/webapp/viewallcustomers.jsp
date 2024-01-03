<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>

<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            text-align: center;
            margin: 0;
            padding: 0;
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
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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

        tr:nth-child(odd) {
            background-color: #fff; /* Alternate row background color */
        }

        /* Additional styles for the table */
        th, td {
            padding: 15px;
        }

        th {
            background-color: #FF5733;
            color: #fff;
        }

        tr:hover {
            background-color: #FF8C69; /* Hover background color */
            transition: background-color 0.3s;
        }
    </style>
</head>

<body>
    <%@ include file="adminnavbar.jsp" %>
    <br>

    <h3 align="center"><u>View All Customers</u></h3>

    <div class="container"> <!-- Added a container around the table -->
        <table align="center" border="2">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>GENDER</th>
                <th>DOB</th>
                <th>EMAIL</th>
                <th>LOCATION</th>
                <th>CONTACT NO</th>
                <th>ACTION</th>
            </tr>

            <c:forEach items="${custdata}" var="cust">
                <tr>
                    <td><c:out value="${cust.id}" /></td>
                    <td><c:out value="${cust.name}" /></td>
                    <td><c:out value="${cust.gender}" /></td>
                    <td><c:out value="${cust.dateofbirth}" /></td>
                    <td><c:out value="${cust.email}" /></td>
                    <td><c:out value="${cust.location}" /></td>
                    <td><c:out value="${cust.contact}" /></td>
                    <td>
                        <a href='<c:url value="viewc?id=${cust.id}"></c:url>'>View</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>

</html>