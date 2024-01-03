<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>

    <!-- restaurant Css -->
    <link type="text/css" rel="stylesheet" href="restprofile.css">

    <!-- FontAwesome 5 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    
</head>
        <%@ include file="restnavbar.jsp" %>
<body>
 <!-- Navbar top -->
    
<br>
        <!-- Navbar -->
        <!-- End -->
    </div>
    <!-- End -->

    <!-- Sidenav -->
    <div class="sidenav">
        <div class="xprofile">
            <img img src='displayrestimage?id=${rest.id}' alt="Card Image" class="card-image" alt="" width="100" height="100">

            <div class="name">
                ${rest.name}
            </div>
            <div class="job">
                ${rest.contactno}
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
            <form method="post" action="restupdate">
                  <i class="fa fa-pen fa-xs edit"></i>

                <table>
                    <tbody>
                        <tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required" value="${rest.name}" readonly/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required  value="${rest.email}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required  value="${rest.password}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Location</label></td>
<td><input type="text" name="location" required value="${rest.location}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><input type="text" name="contactno" required value="${rest.contactno}" readonly/></td>
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