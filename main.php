<div id="content">
    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <div style="position:relative;">
                <div style="    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0,10,20,0.8);"></div>
                <div class="row"
                     style="position: absolute; top:10%; color: white; width: 100%; padding-right: 12%; padding-left: 10%; font-size: x-large;">
                    <div class="icon" style="text-align: center">
                        <img src="images/logo.png" class="img-responsive" alt="" style="display: initial;">
                    </div>
                    <div class="title hideclass" style="text-align: center;"><h2>EL ÉXITO EMPRESARIAL DE NUESTROS CLIENTES</h2></div>
                    <div class="description text-left description-with-icon hideclass" style="text-align: center;">
                        <p>"es nuestra única meta y objetivo"</p>
                    </div>
                </div>
                <video autoplay id="videobg" loop width="100%">
                    <source src="GNS3_Banner.mp4" type="video/mp4">
                    Your browser does not support the video tag. I suggest you upgrade your browser.
                </video>
            </div>

            <div id="events">
                <section class="long-block">
                    <h1 style="text-align: center;">Eventos</h1>
                </section>

                <!--                <center>-->
                <!--                    <iframe src="/ceprodeap/event/gerenciales.com/index.php" width="100%"-->
                <!--                            height="900px" class="lessHeight"></iframe>-->
                <!--                </center>-->
                <div id="carousel-container">
                    <div id="carousel-eventos" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-eventos" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-eventos" data-slide-to="1"></li>
                            <li data-target="#carousel-eventos" data-slide-to="2"></li>
                            <li data-target="#carousel-eventos" data-slide-to="3"></li>
                            <li data-target="#carousel-eventos" data-slide-to="4"></li>
                            <li data-target="#carousel-eventos" data-slide-to="5"></li>
                            <li data-target="#carousel-eventos" data-slide-to="6"></li>
                        </ol>

                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="img/eventos/3128_hiper_excel_sl2.jpg"/>
                            </div>
                            <div class="item ">
                                <img src="img/eventos/3331_javascript_para_el_d_sl1.jpg"/>
                            </div>
                            <div class="item ">
                                <img src="img/eventos/3340_calidad_empresarial_sl.jpg"/>
                            </div>
                            <div class="item ">
                                <img src="img/eventos/3363_certificacin_especia_sl2.jpg"/>
                            </div>
                            <div class="item ">
                                <img src="img/eventos/1234_gestin_de_crdito_y_c_sl.jpg"/>
                            </div>
                            <div class="item ">
                                <img src="img/eventos/3370_reenfoque_de_las_ope_sl.jpg"/>
                            </div>
                            <div class="item ">
                                <img src="img/eventos/1604_sipe_en_lnea_la_pl_sl.jpg"/>
                            </div>
                        </div>

                        <a class="left carousel-control" href="#carousel-eventos" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Anterior</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-eventos" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Siguiente</span>
                        </a>
                    </div>
                </div>

                <div id="main_content">
                    <div id="fb-root"></div>

                    <section>
                        <h1><i class="fa fa-calendar"></i> Próximas Capacitaciones<br/></h1>
                    </section>

                    <section>
                        <div id="loading-events" class="text-center" style="display: none">
                            <i class="fa fa-circle-o-notch fa-spin fa-4x fa-fw" style="color: #071a76"></i>
                            <br/>
                            <i>Cargando</i>
                        </div>

                        <div id="container-home-eventos">
                            <?php
                            $mysqli = new mysqli("localhost", "root", "", "ceprodeap");

                            $query = 'SELECT * FROM eventoslistado';
                            $result = $mysqli->query($query);

                            for ($i = 0; $i < $result->num_rows; $i++) {
                                $row = $result->fetch_array(MYSQLI_ASSOC);

                                printf("<a class=destacado-home ");
                                printf("href=eventos.php?id=$row[id]");
                                printf(" title=\"$row[nombreEvento]\"");
                                printf(" target=_blank>");
                                printf("<div style=\"border-left: 3px solid $row[colorEvento]\">");
                                printf("<div class=tipo-evento-galeria><div>$row[tipoEvento]</div></div>");
                                printf("<div class=nombre-evento-galeria><div><h4>$row[nombreEventoCorto]</h4></div></div>");
                                printf("<div class=fecha-evento-galeria><span>$row[fecha]</span></div>");
                                printf("</div></a>");
                            }

                            /* free result set */
                            mysqli_free_result($result);

                            /* close connection */
                            $mysqli->close();
                            ?>
                        </div>
                    </section>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear"></div>

            <section class="long-block"></section>

            <div class="container-fluid" style="text-align: center">
                <iframe width="100%" src="mapGoogle.html" height="500" scrolling="no"></iframe>
            </div>

            <section id="training_services_steps" class="homepage-section">
                <div class="container">
                    <h2 class="title text-center titlewithmargin">Contáctanos</h2>
                    <ul id="training_services_steps-tab" class="nav nav-tabs text-center" role="tablist">
                        <li class="active"><a href="#training" role="tab" data-toggle="tab">información</a></li>
                    </ul>
                    <div id="training_services_steps-tab-content" class="tab-content">
                        <div class="tab-pane fade active in" id="training">
                            <div class="row text-center">
                                <div class="col-md-3">
                                    <div style="min-height:100px">
                                        <img src="images/home/schedule.png" alt="Register">
                                    </div>
                                    <h3>Horarios</h3>
                                    <p><strong>Lunes - Viernes</strong><br>
                                        07:00 AM - 12:00 M<br>
                                        01:00 PM - 04:00 PM</p>
                                </div>
                                <div class="col-md-3">
                                    <div style="min-height:100px">
                                        <img src="images/home/wait_for_us.png" alt="Attend">
                                    </div>
                                    <h3>Dirección</h3>
                                    <p>Calle Este 2 local 4 1er piso, Centro Comercial Narayola, Sector Morita I
                                        Turmero Estado Aragua.</p>
                                </div>
                                <div class="col-md-3">
                                    <div style="min-height:100px">
                                        <img src="images/home/register.png" alt="Schedule">
                                    </div>
                                    <h3>Teléfonos</h3>
                                    <p>Sucursales:<br>
                                        Maracay: (58)0243-218.39.01<br>
                                        Móvil: (58)0424-433.92.12</p>

                                </div>
                                <div class="col-md-3">
                                    <div style="min-height:100px">
                                        <img src="images/home/attend.png" alt="Waif for us">
                                    </div>
                                    <h3>Correo</h3>
                                    <p>info@ceprodeap.co.ve</p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="services">
                            <div class="row text-center">
                                <div class="col-md-6">
                                    <div style="min-height:100px">
                                        <img src="images/home/register.png" alt="Schedule">
                                    </div>
                                    <h3>Teléfonos</h3>
                                    <p>Sucursales:<br>
                                        Maracay: (58)0243-218.39.01<br>
                                        Móvil: (58)0424-433.92.12</p>

                                </div>
                                <div class="col-md-6">
                                    <div style="min-height:100px">
                                        <img src="images/home/attend.png" alt="Waif for us">
                                    </div>
                                    <h3>Correo</h3>
                                    <p>info@ceprodeap.co.ve</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>
</div>

<script>
    $( document ).ready(function() {
        if(window.localStorage.getItem("goto")!=null){
            window.localStorage.removeItem("goto");
            $('#events').on('click', function(){
                event.preventDefault();
                var new_position = jQuery('#events').offset();
                window.scrollTo(new_position.left,new_position.top);
                return false;
            });
            $( '#events' ).trigger( "click" );
        }
    });
</script>