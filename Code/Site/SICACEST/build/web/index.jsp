<%-- 
    Document   : about
    Created on : 25/10/2018, 09:05:37 AM
    Author     : b41n
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="themes/grayscale/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="themes/grayscale/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="themes/grayscale/css/grayscale.css" rel="stylesheet">
    <link href="themes/grayscale/css/grayscale.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">SICACEST</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#page-top">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">Qué Es?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#procces">Cómo funciona?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#login">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#signup">Inquietudes?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contacto</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead">
      <div class="container d-flex h-100 align-items-center">
        <div class="mx-auto text-center">
          <h1 class="mx-auto my-0 text-uppercase">Sicacest</h1>
          <h2 class="text-white-50 mx-auto mt-2 mb-5">Sistema de Caracterización Estudiantil.</h2>
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
          Iniciar Sesión
        </button>
        </div>
      </div>
    </header>
    <!-- About Section -->
    <section id="about" class="about-section text-center">
      <div class="container">
            <div class="row align-items-center no-gutters mb-4 col-lg-12 ">
              <div class="col-xl-5 col-lg-5">
                <h2 class="text-white mb-4">Que es SICACEST?</h2>
                <p class="text-white-50">SICACEST es un sistema que permite a las Instituciones de Educación Superior(<a href="http://startbootstrap.com/template-overviews/grayscale/">IES</a>),
                  Administrar el proceso de Caracterizacion Estudiantil usando herramientas WEB.</p>
                <p class="text-white-50 mb-2">Esta herramienta</p>
              </div>
              <div class="col-xl-7 col-lg-5">
                <img src="img/empresa.svg" class="img-fluid mb-5 col-xl-12" alt="">
              </div>
            </div>
      </div>
    </section>
    
    <!-- Proccess Section -->
    <section id="procces" class="projects-section bg-light">
        <div class="container">
            <div class="card-deck">
              <div class="card">
                <img class="card-img-top" src="..." alt="Inicie Sesión.">
                <div class="card-body">
                  <h5 class="card-title">Inicie Sesión</h5>
                  <p class="card-text">Ingrese con sus credenciales de acceso .</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
              </div>
              <div class="card">
                <img class="card-img-top" src="..." alt="Diligencie las Encuestas.">
                <div class="card-body">
                  <h5 class="card-title">Diligencie las Encuestas</h5>
                  <p class="card-text">Proporcione la información necesaria para ayudar en la mejora continua de su Universidad .</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
              </div>
              <div class="card">
                <img class="card-img-top" src="..." alt="Actualice sus datos">
                <div class="card-body">
                  <h5 class="card-title">Actualice sus datos</h5>
                  <p class="card-text">Mantenga actualizada su información para que su Universidad le pueda ofrecer un mejor servicio.</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
              </div>
            </div>
        </div>
    </section>

    <!-- Login Section -->
    <section id="login" class="login-section">
      <div class="container">
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
          Iniciar Sesión
        </button>
        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Inicio de Sesión</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                  <form action="https://www.google.com" method="get">
                      <input type="email" name="mail_User"  class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" id="inputEmail" placeholder="Correo Institucional...">
                      <input type="password" name="id_User" class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" id="inputPass" placeholder="Contraseña" id="txtid" autocomplete="off" maxlength="9"/>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="button" id="btnlogin" class="btn btn-primary" onclick="window.location.href='ingreso?id_User='+'000324471'">Iniciar Sesión</button>
                        <!--<button type="button" id="btnlogin" class="btn btn-primary" onclick="window.location.href='ingreso?id_User'+'000324471'">Iniciar Sesión</button>-->
                        <!--<button type="button" id="btnlogin" class="btn btn-primary" onclick="window.location.href='ingreso?id_User'+'000324471';">Iniciar Sesión</button>-->
                      </div>
                  </form>
              </div>
            </div>
          </div>
        </div>
        <!-- Featured Project Row -->
        <div class="row align-items-center no-gutters mb-4 mb-lg-5">
          <div class="col-xl-8 col-lg-7">
            <img class="img-fluid mb-3 mb-lg-0" src="img/bg-masthead.jpg" alt="">
          </div>
          <div class="col-xl-4 col-lg-5">
            <div class="featured-text text-center text-lg-left text-white">
              <h4>Estudiantes</h4>
              <p class="text-white-50 mb-0">Asegúrese de tener sus credenciales de acceso antes de ingresar!</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Signup Section -->
    <section id="signup" class="signup-section">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-lg-8 mx-auto text-center">

            <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
            <h2 class="text-white mb-5">Subscribe to receive updates!</h2>

            <form class="form-inline d-flex">
              <input type="email" class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" id="inputEmail" placeholder="Enter email address...">
              <button type="submit" class="btn btn-primary mx-auto">Subscribe</button>
            </form>

          </div>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="contact-section bg-black">
      <div class="container">

        <div class="row">

          <div class="col-md-4 mb-3 mb-md-0">
            <div class="card py-4 h-100">
              <div class="card-body text-center">
                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                <h4 class="text-uppercase m-0">Address</h4>
                <hr class="my-4">
                <div class="small text-black-50">Serramonte, Villavicencio-Meta</div>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3 mb-md-0">
            <div class="card py-4 h-100">
              <div class="card-body text-center">
                <i class="fas fa-envelope text-primary mb-2"></i>
                <h4 class="text-uppercase m-0">Email</h4>
                <hr class="my-4">
                <div class="small text-black-50">
                  <a href="#">bnovoa.linux@gmail.com</a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3 mb-md-0">
            <div class="card py-4 h-100">
              <div class="card-body text-center">
                <i class="fas fa-mobile-alt text-primary mb-2"></i>
                <h4 class="text-uppercase m-0">Phone</h4>
                <hr class="my-4">
                <div class="small text-black-50">+57 (319) 746-7681</div>
              </div>
            </div>
          </div>
        </div>

        <div class="social d-flex justify-content-center">
          <a href="#" class="mx-2">
            <i class="fab fa-stack-overflow"></i>
          </a>
          <a href="#" class="mx-2">
            <i class="fab fa-github"></i>
          </a>
          <a href="#" class="mx-2">
            <i class="fab fa-youtube"></i>
          </a>
          <a href="#" class="mx-2">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="#" class="mx-2">
            <i class="fab fa-instagram"></i>
          </a>
          <a href="#" class="mx-2">
            <i class="fab fa-twitter"></i>
          </a>
        </div>

      </div>
    </section>

    <!-- Footer -->
    <footer class="bg-black small text-center text-white-50">
      <div class="container">
        Copyright &copy; sicacest.com 2018
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="themes/grayscale/vendor/jquery/jquery.min.js"></script>
    <script src="themes/grayscale/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="themes/grayscale/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="themes/grayscale/js/grayscale.min.js"></script>

  </body>

</html>
