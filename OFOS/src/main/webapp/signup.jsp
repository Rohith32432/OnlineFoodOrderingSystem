<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="styles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <div class="back"> </div>
    <h2>Welcome to Haveit! </h2>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form method="post" action="insertcustomer">
                <h1>Create Account</h1>
                <input type="text" placeholder="Name" name="name"  required />
                <div class="radiol">
                    Male<input type="radio" name="gender" value="male" required>
                    Female<input type="radio" name="gender" value="female" required>
                </div>
                <input type="date" name="dob" placeholder="DOB" required>
                <input type="email" id="em" name="email" placeholder="Email" required>
                <input type="password" id="ptn" name="pwd" placeholder="Password" required>
                <input type="text" id="cd" name="location" placeholder="location" required>
                <input type="number" id="cdn" name="contact" placeholder="contactno" required>
                <input type="submit" id="xbuton" value="Register" required>
            </form>
        </div>

        <div class="form-container sign-in-container">
            <form method="post" action="checkcustomerlogin">
                <h1>Sign in</h1>
                <input type="email" placeholder="Email" name="email" required>
                <input type="password" name="pwd" placeholder="Password" required>
                <a href="#">Forgot your password?</a>
                <input type="submit" id="xbuton" value="login" required>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Welcome Back!</h1>
                    <p>To keep connected with us please <strong>login</strong> with your personal info</p>
                    <button class="ghost" id="signIn" style="margin-bottom: 35px;">Sign In</button><br>
                    <li id="a">password</li>
                    <li id="b">contact</li>
                    <li id="c">email</li>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Welcome to Haveit!</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <button class="ghost" id="signUp">Sign Up</button>
                </div>
            </div>
        </div>
    </div>
    <style>
        li {
            list-style: circle;
        }

        #a {
            font-size: larger;
            text-transform: uppercase;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }

        #b {
            font-size: larger;
            text-transform: uppercase;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }

        #c {
            font-size: larger;
            text-transform: uppercase;
            /* background-color: rgb(51, 255, 33); */
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }
    </style>

    <script>

        const signUpButton = document.getElementById('signUp');
        const signInButton = document.getElementById('signIn');
        const container = document.getElementById('container');

        signUpButton.addEventListener('click', () => {
            container.classList.add("right-panel-active");
        });

        signInButton.addEventListener('click', () => {
            container.classList.remove("right-panel-active");
        });
        var x = document.getElementById("cdn")
        x.addEventListener('input', (event) => {
            let m = event.target.value
            if (m.length == 10) {
                document.getElementById("b").style.color = "rgb(51, 255, 33)"
            }
            else {
                document.getElementById("b").style.color = "red"
            }
        })

        const passwordInput = document.getElementById('ptn');
        const emailInput = document.getElementById('em');

        const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

        const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

        passwordInput.addEventListener('input', (event) => {
            const password = event.target.value;
            const isValidPassword = passwordRegex.test(password);

            if (isValidPassword) {
                document.getElementById("a").style.color = "rgb(51, 255, 33)";
            } else {
                document.getElementById("a").style.color = "red";
            }
        });

        emailInput.addEventListener('input', (event) => {
            const email = event.target.value;
            const isValidEmail = emailRegex.test(email);

            if (isValidEmail) {
                document.getElementById("c").style.color = "rgb(51, 255, 33)";
            } else {
                document.getElementById("c").style.color = "red";
            }
        });


    </script>
</body>

</html>