<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<head>
    <meta charset="UTF-8">
    <title>CEPRODEAP VENEZUELA C.A.</title>
    <meta name="Consultoria Maracay Turmero Aragua Venezuela Consultores " content="CeprodeapVenezuela">
    <meta name="Ceprodeap Venezuela" content="ceprodeap venezuela C.A.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" property='stylesheet'/>
    <link href="css/ceprodeap.css" rel="stylesheet" type="text/css" property='stylesheet'/>
    <link href="css/gear.css" rel="stylesheet" type="text/css">
    <link rel="icon" type="image/png" href="img/logo.png" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" property='stylesheet'/>
    <link href="css/font-awesome.min.css" rel="stylesheet" property='stylesheet'>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="body">
<nav class="navbar navbar-default navbar-itmc navbar-itmc-big navbar-fixed-top" id="main-menu">
    <div class="container">
        <div class="navigation">
            <button id="sized" onclick="setMenu();" class="menu">
                <span></span>
            </button>
            <div id="myModal" class="modal">
                <!-- Modal content -->
                <div class="modal-content animated zoomIn" style="overflow-y: auto;">
                    <div class="modal-header">
                        <span class="close">×</span>
                    </div>

                    <div id="modalBody" class="modal-body nav"></div>

                    <div id="modalFooter" class="modal-footer"></div>
                </div>
            </div>

            <ul class="nav navbar-nav navbar-right list-inline" style="float: right;display: flex;">
                <li><a href="https://twitter.com/ceprodeap" target="_blank"><i class="fa fa-twitter fa-2x"></i></a>
                </li>
                <li><a href="https://m.facebook.com/Ceprodeap/" target="_blank"><i
                                class="fa fa-facebook-square fa-2x"></i></a></li>
                <li><a href="https://www.instagram.com/ceprodeapvenezuela/" target="_blank"><i
                                class="fa fa-instagram fa-2x"></i></a></li>
            </ul>
        </div>
    </div>
</nav>
<div id="content" style="margin-bottom: 470px;"></div>

<div id="footer" class="footer">
    <footer id="colophon" class="site-footer">
        <div class="footer-site-links">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <li><a onclick="loadModule('content', 'main.php');" href="#">Inicio</a></li>
                        <li><a onclick="loadModule('content', 'empresa.html');" href="#">La Empresa</a></li>
                        <li><a onclick="loadModule('content', 'servicios.php');" href="#">Servicios</a></li>
                        <li><a onclick="loadModule('content', 'clientes.php');" href="#">Clientes</a></li>
                        <li><a onclick="goToEvents();" href="#">Capacitaciones</a></li>
                        <li><a onclick="loadModule('content', 'busqueda.html');" href="#">Búsqueda</a></li>
                        <li><a onclick="loadModule('content', 'contacto.html');" href="#">Contáctanos</a></li>
                    </div>
                    <div class="col-md-5 text-right">
                        <p class="small">Copyright &copy; 2017 </p>
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
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6eiGpyMn6DwgOn2IZFKlLMqVsF81rBvA"></script>
<script src="js/index.js"></script>

<script>
    var band = 0;
    var modal = document.getElementById('myModal');
    $( document ).ready(function() {
        $('#content').load('main.php');

        setInterval(
            'changeBackground();',20000);
    });

    function goToEvents() {
        window.localStorage.setItem("goto","event");
        modal.style.display = "none";
        $('#content').load('main.php');
    }

    function changeBackground() {
        if(document.getElementById("mainBackground")!=null){
            if(band==0){
                document.getElementById("mainBackground").src="parallax02.jpg";
                band=1;
            }else{
                document.getElementById("mainBackground").src="parallax01.jpg";
                band=0;
            }
        }
    }

    function loadModule(container, module){
        modal.style.display = "none";
        $('#'+container).load(module);
    }

    function setMenu() {
        $(".modal-header").css({ 'height': "35vh" });
        $( "#modalBody" ).empty().append(
            "<ul>" +
            "<li><a onclick=\"loadModule('content', 'main.php');\" href=\"#\">Inicio</a></li>" +
            "<li><a onclick=\"loadModule('content', 'empresa.html');\" href=\"#\">La Empresa</a></li>" +
            "<li><a onclick=\"loadModule('content', 'servicios.php');\" href=\"#\">Servicios</a></li>" +
            "<li><a onclick=\"loadModule('content', 'clientes.php');\" href=\"#\">Clientes</a></li>" +
            "<li><a onclick=\"goToEvents();\" href=\"#\">Capacitaciones</a></li>" +
            "<li><a onclick=\"loadModule('content', 'busqueda.html');\" href=\"#\">Búsqueda</a></li>" +
            "<li><a onclick=\"loadModule('content', 'contacto.html');\" href=\"#\">Contáctanos</a></li>" +
            "</ul>");
        $( "#modalFooter" ).empty().append("" +
            "<hr><p><strong>Aragua</strong><br> &#149; +58 0243 2183901 &#149;<br><b>info@ceprodeap.com</b></p>");

        document.getElementById('myModal').style.display = "inline-table";
    }
</script>
</body>
</html>