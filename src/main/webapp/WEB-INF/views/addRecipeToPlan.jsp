<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

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
<title>addRecipeToPlan</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<body>
<%@ include file="headerForDashBoard.jsp" %>

<section class="dashboard-section">
  <div class="row dashboard-nowrap">
    <div class="m-4 p-3 width-medium">
      <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <div class="row border-bottom border-3 p-1 m-1">
          <div class="col noPadding">
            <h3 class="color-header text-uppercase">DODAJ PRZEPIS DO PLANU</h3>
          </div>
          <div class="col d-flex justify-content-end mb-2 noPadding">
            <button type="submit" form="recipeToPlan" class="btn btn-success rounded-0 pt-0 pb-0 pr-4 pl-4">Zapisz</button>
          </div>
        </div>

        <div class="schedules-content">
          <form name="recipeToPlan" id="recipeToPlan" action="addRecipeToPlan" method="post">
            <div class="form-group row">
              <label for="choosePlan" class="col-sm-2 label-size col-form-label">
                Wybierz plan
              </label>
              <div class="col-sm-3">
                <select name="choosePlan" class="form-control" id="choosePlan" required autofocus>
                  <c:forEach items="${planList}" var="plan">
                    <option value="${plan.id}">${plan.name}</option>
                  </c:forEach>
                </select>
              </div>
            </div>
            <div class="form-group row">
              <label for="nameMeal" class="col-sm-2 label-size col-form-label">
                Nazwa posiłku
              </label>
              <div class="col-sm-10">
                <input type="text" class="form-control" value="" name="nameMeal" id="nameMeal" required placeholder="Nazwa posiłku">
              </div>
            </div>
            <div class="form-group row">
              <label for="displayOrder" class="col-sm-2 label-size col-form-label">
                Numer posiłku
              </label>
              <div class="col-sm-2">
                <input type="number" min="1" max="5" class="form-control" value="" name="displayOrderFromForm" id="displayOrder"
                       placeholder="Numer posiłku" required>
              </div>
            </div>
            <div class="form-group row">
              <label for="recipe" class="col-sm-2 label-size col-form-label">
                Przepis
              </label>
              <div class="col-sm-4">
                <select class="form-control" id="recipe" name="recipeFromForm" required autofocus>
                  <c:forEach items="${recipeList}" var="recipe">
                    <option value="${recipe.id}">${recipe.name}</option>
                  </c:forEach>
                </select>
              </div>
            </div>
            <div class="form-group row">
              <label for="day" class="col-sm-2 label-size col-form-label">
                Dzień
              </label>
              <div class="col-sm-2">
                <select class="form-control" id="day" name="dayNameId" required autofocus>
                  <c:forEach var="day" items="${dayList}">
                    <option value="${day.id}">${day.name}</option>
                  </c:forEach>
                </select>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>