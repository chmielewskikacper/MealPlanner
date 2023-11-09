<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript">
        var checkEmailAddress = function () {
            const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            const email = document.getElementById('email').value;

            if (emailPattern.test(email)) {
                document.getElementById('message').innerHTML = '';
                return true;
            } else {

                document.getElementById('message').style.color = 'red';
                document.getElementById('message').innerHTML = 'Email jest niepoprawny';
                return false;
            }
        }

        var checkPassword = function () {
            if(document.getElementById('password').value === "") {
                return false;
            }else {
                return true;
            }
        }
        var checkIfButtonShouldBeVisible = function () {
            if (checkEmailAddress() && checkPassword()) {
                document.getElementById("button").removeAttribute("disabled");
            } else {
                document.getElementById("button").setAttribute("disabled", "");
            }
        }

        document.addEventListener("DOMContentLoaded", (event) => {
            checkIfButtonShouldBeVisible();
            document.getElementById('password').addEventListener('keyup', function () {
                checkPassword();
                checkIfButtonShouldBeVisible();
            });
            document.getElementById('email').addEventListener('keyup', function () {
                checkEmailAddress();
                checkIfButtonShouldBeVisible();
            });
        });
    </script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Landing Page - Start Bootstrap Theme</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<c:url value="/css/styles.css" />" rel="stylesheet" type="text/css">
    <title>login</title>
</head>
<body>
<%@ include file = "header.jsp" %>
<center>
    <h1 class="text-bg-warning">${message5}</h1>
    <h2>Logowanie</h2>
</center>
    <center>
        <form action = "login" method="post">
            <div class="d-inline-flex  flex-sm-column justify-content-center w-25">
                <div class="p-2">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email"  placeholder="Podaj email">
                    <span id='message'></span>
                </div>
                <div class="p-2">
                    <label for="password">Hasło</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Podaj hasło">
                </div>
                <button type="submit" id="button" class="btn btn-primary">Zaloguj</button>
            </div>
        </form>
        </center>
            <%@ include file = "footer.jsp" %>
</body>
</html>
