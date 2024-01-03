<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>

    <!-- Custom Css -->
    <link type="text/css" rel="stylesheet" href="customerprofile.css">

    <!-- FontAwesome 5 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    
</head>
<body>
 <!-- Navbar top -->
    <div class="navbar-top">
        <div class="title">
            <h1>My ACCOUNT</h1>
        </div>
<br>
        <!-- Navbar -->
        <%@ include file="custnavbar.jsp" %>
        <!-- End -->
    </div>
    <!-- End -->

    <!-- Sidenav -->
    <div class="sidenav">
        <div class="profile">
            <img src="./static/haveit.jpg" alt="" width="100" height="100">

            <div class="name">
                ${cust.name}
            </div>
            <div class="job">
                ${cust.contact}
            </div>
        </div>

        <div class="sidenav-url">
            <div class="url">
                <a href="#profile" class="active">Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="#settings">Settings</a>
                <hr align="center">
            </div>
        </div>
    </div>
    <!-- End -->

    <!-- Main -->
    <div class="main">
        <div class="card">
            <div class="card-body">
            <form method="post" action="update">
                  <i class="fa fa-pen fa-xs edit"></i>

                <table>
                    <tbody>
                        <tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required" value="${cust.name}" readonly/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
${cust.gender}
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td>
<input type="date" name="dob" required="required"  value="${cust.dateofbirth}"   readonly/>
</td>
</tr>

<tr><td></td></tr>


<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required  value="${cust.email}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required  value="${cust.password}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Location</label></td>
<td><input type="text" name="location" required value="${cust.location}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><input type="text" name="contact" required value="${cust.contact}" readonly/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr align=center>
<td colspan=2><input type="submit" id="updateButton" value="Update" class="button" style="display: none;">
</td>
</tr>
                    </tbody>
                </table>
                </form>
            </div>
        </div>
        </div>

    
    <script>
    // Function to toggle read-only and display the update button
    function toggleEditMode() {
        var inputs = document.querySelectorAll('input[readonly]');
        var updateButton = document.getElementById('updateButton');

        inputs.forEach(function (input) {
            input.removeAttribute('readonly');
        });

        updateButton.style.display = 'block';
    }

    // Add a click event listener to the edit icon
    var editIcon = document.querySelector('.edit');
    editIcon.addEventListener('click', toggleEditMode);
</script>
    
        
</body>
</html>