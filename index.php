<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<head>
    <meta charset="UTF-8">
    <title>CEPRODEAP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" property='stylesheet'/>
    <link href="css/ceprodeap.css" rel="stylesheet" type="text/css" property='stylesheet'/>
    <link href="css/gear.css" rel="stylesheet" type="text/css">

    <link href="css/animate.min.css" rel="stylesheet" type="text/css" property='stylesheet'/>
    <link href="css/font-awesome.min.css" rel="stylesheet" property='stylesheet'>
</head>
<body>
<nav class="navbar navbar-default navbar-itmc navbar-itmc-big navbar-fixed-top" id="main-menu">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar"
                    aria-expanded="false"><span class="sr-only">Toggle navigation</span><span
                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            <a class="" href="index.php"><img src="images/logo_1.png" class="img-responsive" id="logo1" alt="logo"></a>
        </div>
        <div class="collapse navbar-collapse" id="main-navbar">
            <ul class="nav navbar-nav">
                <li><a href="index.php">Inicio</a></li>
                <li><a onclick="$('#content').load('empresa.html');" href="#">La Empresa</a></li>
                <li><a href="servicios.html">Servicios</a></li>
                <li><a href="clientes.html">Clientes</a></li>
                <li><a onclick="goToEvents();" href="#">Capacitaciones</a></li>
                <li><a  href="#">Novedades</a></li>
                <li><a href="contacto.html">Contáctanos</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <div class="social-links">
                    <ul class="list-inline">
                        <li><a href="https://twitter.com/ceprodeap" target="_blank"><i class="fa fa-twitter fa-2x"></i></a>
                        </li>
                        <li><a href="https://m.facebook.com/Ceprodeap/" target="_blank"><i
                                class="fa fa-facebook-square fa-2x"></i></a></li>
                        <li><a href="https://www.instagram.com/ceprodeapvenezuela/" target="_blank"><i
                                class="fa fa-instagram fa-2x"></i></a></li>
                    </ul>
                </div>
            </ul>
        </div>
    </div>
</nav>
<div id="content"></div>

<div class="footer">
    <footer id="colophon" class="site-footer">
        <div class="footer-site-links">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <a href="#">Inicio</a> |
                        <a href="#">La Empresa</a> |
                        <a href="#">Servicios</a> |
                        <a href="#">Eventos</a> |
                        <a href="#">Contáctanos</a>
                    </div>
                    <div class="col-md-5 text-right">
                        <p class="small">Copyright &copy; 2016 - Desarrollado por L.R y J.D - Todos los derechos
                            reservados. </p>
                        <p class="small text-muted">Todas las marcas registradas y logos son propiedad de sus
                            respectivos dueños.</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<script src="js/jquery.min.js"></script>
<script src='js/bootstrap.min.js'></script>
<script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6eiGpyMn6DwgOn2IZFKlLMqVsF81rBvA"></script>
<script>
    $( document ).ready(function() {
        google.maps.event.addDomListener(window, 'load', null);
        $('#content').load('main.php');
    });

    function goToEvents() {
        window.localStorage.setItem("goto","event");
        $('#content').load('main.php');
    }
</script>
</body>
</html>