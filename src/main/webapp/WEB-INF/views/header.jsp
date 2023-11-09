<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
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
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="http://localhost:8080/Warsztat01_war_exploded/landingPage">
        <img class="logo" src="img/zaplanuj2.png" width="300" height="80" alt="">
    </a>
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" href="http://localhost:8080/Warsztat01_war_exploded/login">LOGOWANIE</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="http://localhost:8080/Warsztat01_war_exploded/register">REJESTRACJA</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="http://localhost:8080/Warsztat01_war_exploded/aboutApplication">O APLIKACJI</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="#">PRZEPISY</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="http://localhost:8080/Warsztat01_war_exploded/contact">KONTAKT</a>
        </li>
    </ul>
</nav>
</body>
</html>
