<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>appRecipes</title>
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
    <title>appRecipes</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="headerForDashBoard.jsp" %>
<section class="features-icons bg-light text-center">

    <div class="row">
        <div class="col-md-4" style="font-size: large ">Lista przepisów</div>
        <div class="col-md-4 offset-md-4">
            <a class="btn btn-primary" href="http://localhost:8080/Warsztat01_war_exploded/addRecipes" role="button">Dodaj przepis</a>
        </div>
    </div>
    <div class="container-fluid d-flex justify-content-center" style="padding: 3rem">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">NAZWA</th>
                <th scope="col">OPIS</th>
                <th scope="col">AKCJE</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="recipe" items="${recipeList}" varStatus="loop">
                <tr>
                    <td>${recipe.name}</td>
                    <td>${recipe.description}</td>
                    <td><a class="btn btn-info" href="recipeDetail?id=${recipe.id}" role="button">Szczegóły</a>
                        <a class="btn btn-warning" href="#" role="button">Edytuj</a>
                        <a class="btn btn-danger" href="#" role="button">Usuń</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>
