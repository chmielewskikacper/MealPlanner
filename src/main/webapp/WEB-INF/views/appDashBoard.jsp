<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <link href="<c:url value="/css/styles.css" />" rel="stylesheet" type="text/css">
    <title>appDashBoard</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="p-3 m-0 border-0 bd-example m-0 border-0">
<%@ include file="headerForDashBoard.jsp" %>
<section class="features-icons bg-light text-center">
<div class="container-fluid d-flex justify-content-center">
    <div class="container-fluid d-flex align-items-start">
        <div class="card" style="width: 20rem;">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
            <div class="card-body">
                <p class="card-text" style="color: #1a1e21"></p>
                <a href="http://localhost:8080/Warsztat01_war_exploded/addRecipes" class="btn btn-primary">Dodaj przepis</a>
            </div>
        </div>
        <div class="card" style="width: 20rem;">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
            <div class="card-body">
                <p class="card-text" style="color: #1a1e21"></p>
                <a href="http://localhost:8080/Warsztat01_war_exploded/addPlan" class="btn btn-primary">Dodaj plan</a>
            </div>
        </div>
        <div class="card" style="width: 20rem;">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
            <div class="card-body">
                <p class="card-text" style="color: #1a1e21"></p>
                <a href="http://localhost:8080/Warsztat01_war_exploded/addRecipeToPlan" class="btn btn-primary">Dodaj przepis do planu</a>
            </div>
        </div>
    </div>
    <div class="container-fluid d-flex justify-content-center">
        <div class="card"style="width: 30rem; height: 6rem;">
            <ul class="list-group list-group-flush">
                <li class="list-group-item bi-info" style="height: 3rem">Liczba przepisów:${numberOfRecipes}</li>
                <li class="list-group-item bi-calendar" style="height: 2rem">Liczba planów: ${numberOfPlans}</li>
            </ul>
        </div>
    </div>
</div>
    <div class="container-fluid d-flexjustify-content-center ">
        <h3 style="padding: 3rem">Ostatnio dodany plan: ${planName}</h3>
    </div>
    <div class="container-fluid d-flex justify-content-center">
        <table class="table">
            <thead>
            <tr>
                <c:forEach var="index" items="${dayList}" varStatus="loop">
                <th scope="col">${dayList[loop.index]}</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="index" items="${mealNameList}" varStatus="loop">
                <tr>
                    <td>${mealNameList[loop.index]}</td>
                    <td>${recipeList[loop.index]}</td>
                    <td><a class="btn btn-primary" href="#" role="button">Szczegóły</a></td>
                </tr>
            </c:forEach>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>
