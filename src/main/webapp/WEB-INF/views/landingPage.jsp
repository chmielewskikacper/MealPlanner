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
<!-- Navigation-->
<%@ include file = "header.jsp" %>
<!-- Masthead-->
<header class="masthead">
    <div class="container position-relative">
        <div class="row justify-content-center">
            <div class="col-xl-6">
                <div class="text-center text-white">
                    <!-- Page heading-->
                    <h1 class="mb-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit!</h1>
                    <!-- Signup form-->
                    <!-- * * * * * * * * * * * * * * *-->
                    <!-- * * SB Forms Contact Form * *-->
                    <!-- * * * * * * * * * * * * * * *-->
                    <!-- This form is pre-integrated with SB Forms.-->
                    <!-- To make this form functional, sign up at-->
                    <!-- https://startbootstrap.com/solution/contact-forms-->
                    <!-- to get an API token!-->
                    <form class="form-subscribe" id="contactForm" data-sb-form-api-token="API_TOKEN">
                        <!-- Email address input-->
                        <div class="row">
                            <div class="col">
                                <input class="form-control form-control-lg" id="emailAddress" type="email" placeholder="Email Address" data-sb-validations="required,email" />
                                <div class="invalid-feedback text-white" data-sb-feedback="emailAddress:required">Email Address is required.</div>
                                <div class="invalid-feedback text-white" data-sb-feedback="emailAddress:email">Email Address Email is not valid.</div>
                            </div>
                            <div class="col-auto"><button class="btn btn-primary btn-lg disabled" id="submitButton" type="submit">Submit</button></div>
                        </div>
                        <!-- Submit success message-->
                        <!---->
                        <!-- This is what your users will see when the form-->
                        <!-- has successfully submitted-->
                        <div class="d-none" id="submitSuccessMessage">
                            <div class="text-center mb-3">
                                <div class="fw-bolder">Form submission successful!</div>
                                <p>To activate this form, sign up at</p>
                                <a class="text-white" href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                            </div>
                        </div>
                        <!-- Submit error message-->
                        <!---->
                        <!-- This is what your users will see when there is-->
                        <!-- an error submitting the form-->
                        <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Icons Grid-->
<section class="features-icons bg-light text-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                    <div class="features-icons-icon d-flex"><i class="bi-window m-auto text-primary"></i></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p class="lead mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae!</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                    <div class="features-icons-icon d-flex"><i class="bi-layers m-auto text-primary"></i></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p class="lead mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse!</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                    <div class="features-icons-icon d-flex"><i class="bi-terminal m-auto text-primary"></i></div>
                    <h3>Lorem ipsum</h3>
                    <p class="lead mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a magna!</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Image Showcases-->
<section class="showcase">
    <div class="container-fluid p-0">
        <div class="row g-0">
            <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('img/bg-showcase-1.jpg')"></div>
            <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                <h2>Lorem ipsum dolor sit</h2>
                <p class="lead mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eros justo, pellentesque id nunc in, ultrices fringilla tortor. Nam a!</p>
            </div>
        </div>
        <div class="row g-0">
            <div class="col-lg-6 text-white showcase-img" style="background-image: url('img/bg-showcase-2.jpg')"></div>
            <div class="col-lg-6 my-auto showcase-text">
                <h2>Lorem ipsum dolor sit</h2>
                <p class="lead mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas egestas ipsum mi, non porta velit mollis non. Curabitur!</p>
            </div>
        </div>
        <div class="row g-0">
            <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('img/bg-showcase-3.jpg')"></div>
            <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                <h2>Lorem ipsum dolor</h2>
                <p class="lead mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tincidunt imperdiet augue ut lacinia. Vestibulum nulla tortor, ultrices ac dui!</p>
            </div>
        </div>
    </div>
</section>
<!-- Testimonials-->
<section class="testimonials text-center bg-light">
    <div class="container">
        <h2 class="mb-5">Lorem ipsum dolor sit amet...</h2>
        <div class="row">
            <div class="col-lg-4">
                <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                    <img class="img-fluid rounded-circle mb-3" src="img/testimonials-1.jpg" alt="..." />
                    <h5>Margaret E.</h5>
                    <p class="font-weight-light mb-0">"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dapibus!"</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                    <img class="img-fluid rounded-circle mb-3" src="img/testimonials-2.jpg" alt="..." />
                    <h5>Fred S.</h5>
                    <p class="font-weight-light mb-0">"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec venenatis quam!"</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                    <img class="img-fluid rounded-circle mb-3" src="img/testimonials-3.jpg" alt="..." />
                    <h5>Sarah W.</h5>
                    <p class="font-weight-light mb-0">"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus!"</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Call to Action-->
<section class="call-to-action text-white text-center" id="signup">
    <div class="container position-relative">
        <div class="row justify-content-center">
            <div class="col-xl-6">
                <h2 class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing!</h2>
                <!-- Signup form-->
                <!-- * * * * * * * * * * * * * * *-->
                <!-- * * SB Forms Contact Form * *-->
                <!-- * * * * * * * * * * * * * * *-->
                <!-- This form is pre-integrated with SB Forms.-->
                <!-- To make this form functional, sign up at-->
                <!-- https://startbootstrap.com/solution/contact-forms-->
                <!-- to get an API token!-->
                <form class="form-subscribe" id="contactFormFooter" data-sb-form-api-token="API_TOKEN">
                    <!-- Email address input-->
                    <div class="row">
                        <div class="col">
                            <input class="form-control form-control-lg" id="emailAddressBelow" type="email" placeholder="Email Address" data-sb-validations="required,email" />
                            <div class="invalid-feedback text-white" data-sb-feedback="emailAddressBelow:required">Email Address is required.</div>
                            <div class="invalid-feedback text-white" data-sb-feedback="emailAddressBelow:email">Email Address Email is not valid.</div>
                        </div>
                        <div class="col-auto"><button class="btn btn-primary btn-lg disabled" id="submitButton" type="submit">Submit</button></div>
                    </div>
                    <!-- Submit success message-->
                    <!---->
                    <!-- This is what your users will see when the form-->
                    <!-- has successfully submitted-->
                    <div class="d-none" id="submitSuccessMessage">
                        <div class="text-center mb-3">
                            <div class="fw-bolder">Form submission successful!</div>
                            <p>To activate this form, sign up at</p>
                            <a class="text-white" href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                        </div>
                    </div>
                    <!-- Submit error message-->
                    <!---->
                    <!-- This is what your users will see when there is-->
                    <!-- an error submitting the form-->
                    <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->
<%@ include file = "footer.jsp" %>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
