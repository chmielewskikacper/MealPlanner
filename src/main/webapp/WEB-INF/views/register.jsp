<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript">

        var validatePassword = function () {
            const password = document.getElementById('password1');

            // Define the password validation regular expression
            const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

            // Check if the password matches the regular expression
            if (passwordRegex.test(password.value)) {
                document.getElementById('message2').innerHTML ='';
                return true;

            } else {
                // Password is invalid
                document.getElementById('message2').style.color = 'red';
                document.getElementById('message2').innerHTML = 'Hasło musi mieć co najmniej 8 znaków i zawierać co najmniej jedną wielką literę, jedną małą literę, jedną cyfrę i jeden znak specjalny (@, $, !, %, *, ?, &)'
                return false;
            }
        }

        var checkPassword = function () {
            if (document.getElementById('password1').value ===
                document.getElementById('password2').value) {
                document.getElementById('message').innerHTML = '';
                return true;
            } else {
                document.getElementById('message').style.color = 'red';
                document.getElementById('message').innerHTML = 'Hasła nie są takie same';
                return false;
            }
        }

        var checkEmailAddress = function () {
            const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            const email = document.getElementById('email').value;

            if (emailPattern.test(email)) {
                document.getElementById('message3').innerHTML ='';
                return true;
            } else {
                // Password is invalid
                document.getElementById('message3').style.color = 'red';
                document.getElementById('message3').innerHTML = 'Email jest nieporawny';
                return false;
            }
        }

        var checkIfButtonShouldBeVisible = function () {
            if (checkEmailAddress() && checkPassword() && validatePassword()) {
                document.getElementById("button").removeAttribute("disabled");
            } else {
                document.getElementById("button").setAttribute("disabled", "");
            }
        }

        document.addEventListener("DOMContentLoaded", (event) => {
            checkIfButtonShouldBeVisible();
            document.getElementById('password1').addEventListener('keyup', function () {
                validatePassword();
                 checkIfButtonShouldBeVisible();
            });
            document.getElementById('password2').addEventListener('keyup', function () {
                checkPassword();
                checkIfButtonShouldBeVisible();

            });
            document.getElementById('email').addEventListener('keyup', function () {
                checkEmailAddress();
                checkIfButtonShouldBeVisible();
            })
        });

    </script>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Landing Page - Start Bootstrap Theme</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"
          type="text/css"/>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet"
          type="text/css"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<c:url value="/css/styles.css" />" rel="stylesheet" type="text/css">
    <title>register</title>
</head>
<body>
<%@ include file="header.jsp" %>
<section class="features-icons bg-light text-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-4">
                <h1 class="text-bg-warning">${message5}</h1>
                <h2>Rejestracja</h2>
                <form action="register" method="post">
                    <div class="d-inline-flex flex-sm-column w-75">
                        <div class="p-2">
                            <label for="name">Imię</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Podaj imię">
                        </div>
                        <div class="p-2">
                            <label for="lastName">Nazwisko</label>
                            <input type="text" class="form-control" id="lastName" name="lastName"
                                   placeholder="Podaj nazwisko">
                        </div>
                        <div class="p-2">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Podaj email">
                            <span id='message3'></span>
                        </div>
                        <div class="p-2">
                            <label for="password1">Hasło</label>
                            <input type="password" class="form-control" id="password1" name="password1"
                                   placeholder="Podaj hasło">
                            <span id='message2'></span>
                        </div>
                        <div class="p-2">
                            <label for="password2">Powtórz hasło</label>
                            <input type="password" class="form-control" id="password2" name="password2"
                                   placeholder="Powtórz hasło">
                            <span id='message'></span>
                        </div>
                        <button type="submit" id="button" class="btn btn-primary">Wyślij</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>
