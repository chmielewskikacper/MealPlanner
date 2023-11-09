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
    <title>appDashBoard</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body class="p-3 m-0 border-0 bd-example m-0 border-0">
<%@ include file="headerForDashBoard.jsp" %>
<section class="dashboard-section">
    <div class="row dashboard-nowrap">
        <div class="m-4 p-3 width-medium text-color-darker">
            <div class="dashboard-content border-dashed p-3 m-4 view-height">
                <!-- fix action, method -->
                <!-- add name attribute for all inputs -->
                <form action="addRecipes" method="post">
                    <div class="mt-4 ml-4 mr-4">
                        <div class="row border-bottom border-3">
                            <div class="col"><h3 class="color-header text-uppercase fw-normal">Nowy przepis</h3></div>
                            <div class="col d-flex justify-content-end mb-2">
                                <button type="submit" class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Zapisz
                                </button>
                            </div>
                        </div>

                        <table class="table borderless">
                            <tbody>
                            <tr class="d-flex">
                                <th scope="row" class="col-2 fw-normal">Nazwa Przepisu</th>
                                <td class="col-7">

                                    <input name="name" name="name" id="name" class="form-control" required  pattern="[A-Za-z-zżźćńółęąśŻŹĆĄŚĘŁÓŃ]+.*" value="" >
                                </td>
                            </tr>
                            <tr class="d-flex">
                                <th scope="row" class="col-2 fw-normal">Opis przepisu</th>
                                <td class="col-7"><textarea name="description" id="description" class="form-control"
                                                            rows="5"
                                                            required pattern="[A-Za-z-zżźćńółęąśŻŹĆĄŚĘŁÓŃ]+.*" ></textarea></td>
                            </tr>
                            <tr class="d-flex">
                                <th scope="row" class="col-2 fw-normal">Przygotowanie (minuty)</th>
                                <td class="col-3">
                                    <input class="form-control" name="preparationTime" id="preparationTime" type="number" min="0" step="1"
                                           value=""
                                           required>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="row d-flex">
                            <div class="col-5 border-bottom border-3 "><h3 class="text-uppercase fw-normal">Sposób
                                przygotowania</h3></div>
                            <div class="col-2"></div>
                            <div class="col-5 border-bottom border-3"><h3 class="text-uppercase fw-normal">Składniki</h3></div>
                        </div>
                        <div class="row d-flex">
                            <div class="col-5 p-4">
                                <textarea name="preparation" id="preparation" class="form-control" rows="10"
                                          required  pattern="[A-Za-z-zżźćńółęąśŻŹĆĄŚĘŁÓŃ]+.*"  ></textarea>
                            </div>
                            <div class="col-2"></div>

                            <div class="col-5 p-4">
                                <textarea name="ingredients" id="ingredients" class="form-control" rows="10"
                                          required pattern="[A-Za-z-zżźćńółęąśŻŹĆĄŚĘŁÓŃ]+.*"  ></textarea>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>