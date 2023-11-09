<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
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
    <title>headerForDashBoard</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
   <a class="navbar-brand" href="#">
       <img class="logo" src="img/zaplanuj2.png" width="300" height="80" alt="">
   </a>
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" href="http://localhost:8080/Warsztat01_war_exploded/appDashBoard">PULPIT</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="http://localhost:8080/Warsztat01_war_exploded/appRecipes">RRZEPISY</a>
       </li>
        <li class="nav-item">
            <a class="nav-link active" href="http://localhost:8080/Warsztat01_war_exploded/planList">PLANY</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="#">EDYTUJ DANE</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="http://localhost:8080/Warsztat01_war_exploded/logout">WYLOGUJ SIĘ</a>
<%--            <form action="logout" method="post">--%>
<%--                <input type="submit"  value="Wyloguj się" class="nav-link active">--%>
<%--            </form>--%>
        </li>
    </ul>
        <div class="d-flex align-items-center">
                <a>${firstName}  ${lastName}</a>
        </div>
    </div>
</nav>
</body>
</html>
