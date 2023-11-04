<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>

<head>
    <link rel="stylesheet" href="chooseres.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    </head>

<body>
    <%@ include file="custnavbar.jsp" %>
    <br>

    <header class="res-header">
        <h1>HOP IN TO YOUR DESIRED RESTAURANT</h1>
    </header>
    <div class="search-bar">
        <input type="text" id="searchInput" placeholder="Search for items...">
    </div>

    <div class="restaurant-container">
        <c:forEach items="${restdata}" var="rest">
            <div class="restaurant-card">
                <h2><c:out value="${rest.name}" /></h2>
                <p><strong>Location:</strong> <c:out value="${rest.location}" /></p>
                
                <p><a href='<c:url value="viewr?id=${rest.id}"></c:url>'>View</a></p>
            </div>
        </c:forEach>
    </div>
</body>

</html>
