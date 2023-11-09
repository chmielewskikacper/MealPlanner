
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
  <title>planDetails</title>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<%@ include file="headerForDashBoard.jsp" %>
<section class="dashboard-section">
  <div class="row dashboard-nowrap">
    <div class="m-4 p-3 width-medium ">
      <div class="dashboard-content border-dashed p-3 m-4">
        <div class="row border-bottom border-3 p-1 m-1">
          <div class="col noPadding">
            <h3 class="color-header text-uppercase">SZCZEGÓŁY PLANU</h3>
          </div>
          <div class="col d-flex justify-content-end mb-2 noPadding">
            <a href="http://localhost:8080/Warsztat01_war_exploded/planList" class="btn btn-success rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
          </div>
        </div>

        <div class="schedules-content">
          <div class="schedules-content-header">
            <div class="form-group row">
                                <span class="col-sm-2 label-size col-form-label">
                                    Nazwa planu
                                </span>
              <div class="col-sm-10">
                <p class="schedules-text">
                  ${planName}
                </p>
              </div>
            </div>
            <div class="form-group row">
                                <span class="col-sm-2 label-size col-form-label">
                                    Opis planu
                                </span>
              <div class="col-sm-10">
                <p class="schedules-text">
                  ${planDescription}
                </p>
              </div>
            </div>
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
        </div>
      </div>
    </div>
  </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>