<!DOCTYPE html>
<html lang="es">
<?php
$mysqli = new mysqli("localhost", "root", "", "ceprodeap");

$query = 'SELECT * FROM eventodetalle WHERE id=' . $_GET['id'];
$result = $mysqli->query($query);

$row = $result->fetch_array(MYSQLI_ASSOC);
?>
<head>
    <meta charset="UTF-8"/>
    <title><?php printf($row['titulo']) ?></title>
    <meta name="description" content=<?php printf($row['subtitulo']) ?>>

    <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/basee5c6.css?v=2016.6">
    <link rel="stylesheet" href="css/base_eventos03ce.css?v=2016.1">

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<div id="contenido-wrapper">
    <div id="main_content">
        <div id="evento-overview">
            <div class="page-header col-md-7" style="margin-top: 0">
                <h1>
                    <?php printf($row['titulo']) ?>
                    <br/>
                    <small>
                        <?php printf($row['subtitulo']) ?>
                    </small>
                </h1>
            </div>

            <div class="col-md-5">
                <img src="img/eventos/thumbs/<?php printf($row['imagenPequena']) ?>" class="thumb img-responsive"
                     itemprop="image" style="margin:auto" alt="<?php printf($row['titulo']) ?>"/>
            </div>
            <div class="clear">&nbsp;</div>
        </div>

        <ul class="nav nav-tabs nav-justified" style="margin-bottom: 1em">
            <li role="presentation" class="active"><a role="tab" data-toggle="tab" href="#ev_titulo"><i
                        class="fa fa-quote-left"></i> Título</a></li>
            <li role="presentation"><a role="tab" data-toggle="tab" href="#ev_contenido"><i
                        class="fa fa-align-justify"></i> Contenido</a></li>
            <li role="presentation"><a role="tab" data-toggle="tab" href="#ev_info"><i
                        class="fa fa-info-circle"></i> Información</a></li>
            <li role="presentation"><a role="tab" data-toggle="tab" href="#ev_precios"><i class="fa fa-money"></i>
                    Precios</a></li>
        </ul>

        <div class="tab-content">
            <div id="ev_titulo" role="tabpanel" class="tab-pane active">
                <img src="img/eventos/<?php printf($row['imagenGrande']) ?>" class="img-responsive"
                     alt="Gestión Tributaria De Empresas" style="margin:auto"/></div>

            <div id="ev_contenido" role="tabpanel" class="tab-pane">
                <div style="margin: 12px">
                    <?php printf($row['contenido']) ?>
                </div>
            </div>

            <div id="ev_info" role="tabpanel" class="tab-pane">
                <div id="lugar" class="seccion">
                    <h3><i class="fa fa-map-marker"></i> LUGAR </h3>
                    <p itemprop="location">
                        <?php printf($row['lugar']) ?>
                        <br>
                    </p>
                </div>

                <div id="fecha_hora" class="seccion">
                    <h3><i class="fa fa-clock-o"></i> FECHA DE INICIO</h3>
                    <p>
                        <?php printf($row['fechaEvento']) ?><br>
                        <?php printf($row['horaEvento']) ?>
                    </p>
                </div>

                <div id="facilitador" class="seccion">
                    <h3><i class="fa fa-user"></i>
                        FACILITADOR
                    </h3>

                    <p style="margin-bottom:5px; clear: both;">
                        <b><?php printf($row['nombreFacilitador']) ?> <img src="img/icons/flags32/ve.png"></b></p>
                    <p>
                        <img src="img/facilitadores/Fran.jpg.jpg"
                             style="float: left;width: 100px;height: 120px;margin: 10px;"
                             alt="<?php printf($row['nombreFacilitador']) ?>"/>
                        <?php printf($row['informacionFacilitador']) ?>
                    </p>
                    <div style="clear:both"></div>
                </div>

                <div id="mas_info" class="seccion">
                    <h3><i class="fa fa-info-circle"></i>
                        MÁS INFORMACIÓN...
                    </h3>

                    <table style="margin-left:64px">
                        <tbody>
                        <tr>
                            <td style="width:150px;font-weight:bold">
                                <img src="img/icons/flag_contact/venezuela.png" width="32" height="32"
                                     alt="Venezuela"/> <b>Venezuela</b>
                            </td>
                        </tr>
                        <tr <?php if ($row['telefonoMaster'] == null) {
                            printf(" style=display:none;");
                        } ?>>
                            <td style="width:80px;font-weight: bold;padding-left:20px">MASTER</td>
                            <td> <?php printf($row['telefonoMaster']) ?></td>
                        </tr>
                        <tr <?php if ($row['telefonoFax'] == null) {
                            printf(" style=display:none;");
                        } ?>>
                            <td style="width:80px;font-weight: bold;padding-left:20px">Telfax</td>
                            <td> <?php printf($row['telefonoFax']) ?></td>
                        </tr>
                        <tr <?php if ($row['telefonoCelular'] == null) {
                            printf(" style=display:none;");
                        } ?>>
                            <td style="width:80px;font-weight: bold;padding-left:20px;">Celular</td>
                            <td> <?php printf($row['telefonoCelular']) ?></td>
                        </tr>
                        </tbody>
                    </table>
                    <p>O al email: <a
                            href="mailto:mercadeo@gerenciales.com"><?php printf($row['email']) ?></a></p>
                    <p>
                        <small>Horario de Atención Telefónica:<br><?php printf($row['horarioAtencionTelefonica']) ?>
                        </small>
                    </p>
                </div>

                <div>
                    <p><?php printf($row['informacionCertificados']) ?></p>
                </div>
            </div>

            <div id="ev_precios" role="tabpanel" class="tab-pane">
                <div class="seccion">
                    <h3 style="margin-top: 2em"><i class="fa fa-money"></i> PRECIOS <span
                            class="alert alert-warning">(No incluyen I.V.A.)</span>
                    </h3>

                    <table id="precios" class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th width="130px">Tipo</th>
                            <th colspan="1">
                                Presencial
                            </th>
                            <th>Validez</th>
                        </tr>
                        </thead>

                        <tr>
                            <td>
                            </td>
                            <td width="100px">
                                ----------
                            </td>
                            <td>
                                --------------------
                            </td>
                        </tr>
                        <tr <?php if ($row['precioPreventaNombre'] == null) {
                            printf(" style=display:none;");
                        } ?>>
                            <td>
                                <?php printf($row['precioPreventaNombre']) ?>
                            </td>
                            <td width="100px">
                                <?php printf($row['precioPreventaMonto']) ?>
                            </td>
                            <td>
                                <?php printf($row['precioPreventaDescripcion']) ?>
                            </td>

                        </tr>
                        <tr <?php if ($row['precioNormalNombre'] == null) {
                            printf(" style=display:none;");
                        } ?>>
                            <td>
                                <?php printf($row['precioNormalNombre']) ?>
                            </td>
                            <td width="100px">
                                <?php printf($row['precioNormalMonto']) ?>
                            </td>
                            <td>
                                <?php printf($row['precioNormalDescripcion']) ?>
                            </td>
                        </tr>
                        <tr <?php if ($row['precioDiaEventoNombre'] == null) {
                            printf(" style=display:none;");
                        } ?>>
                            <td>
                                <?php printf($row['precioDiaEventoNombre']) ?>
                            </td>
                            <td width="100px">
                                <?php printf($row['precioDiaEventoMonto']) ?>
                            </td>
                            <td>
                                <?php printf($row['precioDiaEventoDescripcion']) ?>
                            </td>
                        </tr>
                        <tr <?php if ($row['precioCartaCompromisoNombre'] == null) {
                            printf(" style=display:none;");
                        } ?>>
                            <td>
                                <?php printf($row['precioCartaCompromisoNombre']) ?>
                            </td>
                            <td width="100px">
                                <?php printf($row['precioCartaCompromisoMonto']) ?>
                            </td>
                            <td>
                                <?php printf($row['precioCartaCompromisoDescripcion']) ?>
                            </td>
                        </tr>
                    </table>

                    <div id="incluye">
                        <h3><i class="fa fa-cubes"></i> INCLUYE</h3>
                        <ul>
                            <?php printf($row['incluyeEvento']) ?>
                        </ul>

                        <p style="margin: 0" class="alert alert-warning">Nota: En el caso de no poder asistir al
                            evento, tendrá un lapso de 3 meses para usar esos cupos,
                            tanto para eventos online como presenciales,
                            solo tendrá que cancelar la diferencia si el evento al cual desea acudir es más costoso
                            (inversión no reembolsable).</p>
                    </div>
                </div>

                <div class="seccion" style="border:none;">
                    <h3><i class="fa fa-star"></i>PROMOCIONES </h3>
                    <p style="text-align:center">
                        <img src="img/banners/promociones_varias.png" alt="Promociones"
                             class="img-responsive"/><br>

                        <img src="img/banners/promocion-estudiantes-2013.png" alt="Promociones Estudiantes"
                             class="img-responsive"/><br/>

                        <img src="img/banners/descuento10.png" alt="Promoción Gold"
                             class="img-responsive"/>

                    <div class="alert alert-warning">
                        Nota: Con excepción del descuento "Gold Membership", Las promociones no pueden ser aplicadas
                        simultáneamente.
                        <br>
                        Todas las promociones NO utilizadas el dia del evento al que fue reservado no serán tomadas en
                        cuenta para próximos eventos.
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div style="clear:both">&nbsp;</div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>
</body>
</html>

<?php
mysqli_free_result($result);
$mysqli->close();
?>