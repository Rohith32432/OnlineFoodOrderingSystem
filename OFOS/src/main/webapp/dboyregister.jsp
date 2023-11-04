<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
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
            text-align: center;
            width: 70%; /* Adjust the width as needed */
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
            padding: 25px;
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

        tr:hover {
            background-color: #FF8C69; /* Hover background color */
            transition: background-color 0.3s;
        }

        .center {
            text-align: center;
        }

        .styled-input {
            border: 1px solid #0077B6;
            border-radius: 5px;
            padding: 10px;
            width: 100%;
        }

        .styled-button {
            background-color: #FF5733;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-weight: bold;
        }
    </style>
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <div class="container">
        <h3><u>Delivery Boy Registration</u></h3>
        <form method="post" action="insertdboy">
            <table>
                <tr>
                    <td class="center"><label>Name</label></td>
                    <td><input type="text" name="name" class="styled-input" required="required" /></td>
                </tr>
                <tr>
                    <td class="center"><label>Gender</label></td>
                    <td>
                        <input type="radio" name="gender" value="MALE" required/>Male
                        <input type="radio" name="gender" value="FEMALE" required/>Female
                        <input type="radio" name="gender" value="OTHERS" required/>Others
                    </td>
                </tr>
                <tr>
                    <td class="center"><label>Date of Birth</label></td>
                    <td><input type="date" name="dob" class="styled-input" required="required" /></td>
                </tr>
                <tr>
                    <td class="center"><label>Department</label></td>
                    <td>
                        <select name="dept" class="styled-input" required>
                            <option value="">---Select---</option>
                            <option value="SALES">Food Delivery</option>
                            <option value="TECHNICAL">Grocery</option>
                            <option value="MARKETING">Electrical</option>
                            <option value="OTHERS">Others</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="center"><label>Salary</label></td>
                    <td><input type="number" name="salary" step="0.01" class="styled-input" required/></td>
                </tr>
                <tr>
                    <td class="center"><label>Email ID</label></td>
                    <td><input type="email" name="email" class="styled-input" required/></td>
                </tr>
                <tr>
                    <td class="center"><label>Password</label></td>
                    <td><input type="password" name="pwd" class="styled-input" required/></td>
                </tr>
                <tr>
                    <td class="center"><label>Location</label></td>
                    <td><input type="text" name="location" class="styled-input" required/></td>
                </tr>
                <tr>
                    <td class="center"><label>Contact No</label></td>
                    <td><input type="text" name="contact" pattern="[789][0-9]{9}" class="styled-input" placeholder="Must be 10 digits" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="center"><button type="submit" class="styled-button">Register</button></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
