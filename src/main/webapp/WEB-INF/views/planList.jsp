<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
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
  <title>planList</title>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<%@ include file="headerForDashBoard.jsp" %>
<section class="dashboard-section">
  <div class="row dashboard-nowrap">
    <div class="m-4 p-3 width-medium">
      <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <div class="row border-bottom border-3 p-1 m-1">
          <div class="col noPadding">
            <h3 class="color-header text-uppercase">LISTA PLANÓW</h3>
          </div>
          <div class="col d-flex justify-content-end mb-2 noPadding">
            <a href="http://localhost:8080/Warsztat01_war_exploded/addPlan" class="btn btn-primary rounded-0 pt-0 pb-0 pr-4 pl-4">Dodaj
              plan</a>
          </div>
        </div>
        <div class="schedules-content">
          <table class="table border-bottom">
            <thead>
            <tr class="d-flex">
              <th class="col-2">NAZWA</th>
              <th class="col-7">OPIS</th>
              <th class="col-2 center">AKCJE</th>
            </tr>
            </thead>
            <tbody class="text-color-lighter">
            <c:forEach items="${plan}" var="plan">
            <tr class="d-flex">
              <td class="col-2">${plan.name}</td>
              <td class="col-7">${plan.description}</td>

              <td>
                <a href="http://localhost:8080/Warsztat01_war_exploded/planDetails?planId=${plan.id}"
                   class="btn btn-info">Szczegóły</a>
                <a href="#?planId=${plan.id}"
                   class="btn btn-warning">Edytuj</a>
                <a href="#?planId=${plan.id}&planName=${plan.name}"
                   class="btn btn-danger">Usuń</a>
              </td>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>