<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>

<head>
    
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
            margin-top: 20px;
            border-radius: 10px;
            overflow: hidden;
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

    <h3 align="center"><u>View All Restaurants</u></h3>

    <table align="center" border="2">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>LOCATION</th>
            <th>EMAIL ID</th>
            <th>CONTACT NO</th>
            <th>ACTION</th>
        </tr>

        <c:forEach items="${restdata}" var="rest">
            <tr>
                <td><c:out value="${rest.id}" /></td>
                <td><c:out value="${rest.name}" /></td>
                <td><c:out value="${rest.location}" /></td>
                <td><c:out value="${rest.email}" /></td>
                <td><c:out value="${rest.contactno}" /></td>
                <td>
                    <a href='<c:url value="viewr?id=${rest.id}"></c:url>'>View</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>

</html>