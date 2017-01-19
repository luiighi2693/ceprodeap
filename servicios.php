<div id="content">
    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <section id="portfolio">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2>Capacitaciones</h2>
                            <hr class="star-primary">
                        </div>
                    </div>
                    <?php
                    $names = array("ADMINISTRACIÓN", "AREA FINANCIERA", "AUDITORIA", "EVENTOS CORPORATIVOS", "GESTIÓN HUMANO", "IDENTIDAD CORPORATIVA", "LOGÍSTICA Y ALMACÉN", "MERCADEO DIGITAL", "VENTAS Y MERCADEO", "ALTA DIRECCIÓN ");
                    for($i=0; $i<10; $i++){
                        if($i==0){
                            printf("<div class=\"row\">");
                        }

                        printf("<div class=\"col-sm-4 portfolio-item\">");
                        printf("<a href=\"#portfolioModal".($i+1)."\" class=\"portfolio-link\" data-toggle=\"modal\">");
                        printf("<h3 class=\"tittleTextCenter\">".$names[$i]."</h3>");
                        printf("<img src=\"img/portfolio/figure".($i+1).".jpg\" class=\"img-responsive\" alt=\"\">");
                        printf("</a></div>");

                        if( ((($i+1)%3)==0)){
                            printf("</div>");
                            printf("<div class=\"row\">");
                        }
                    }
                    printf("</div>");
                    ?>
                </div>
            </section>
        </main><!-- #main -->
    </div><!-- #primary -->
</div>
<br>

<?php
for($i=0; $i<10; $i++){
    printf("<div class=\"portfolio-modal modal fade\" id=\"portfolioModal".($i+1)."\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">");
    printf("<div class=\"modal-content\">");
    printf("<div class=\"close-modal\" data-dismiss=\"modal\">");
    printf("<div class=\"lr\">");
    printf("<div class=\"rl\">");
    printf("</div>");
    printf("</div>");
    printf("</div>");
    printf("<div class=\"container\">");
    printf("<div class=\"row\">");
    printf("<div class=\"col-lg-8 col-lg-offset-2\">");
    printf("<div class=\"modal-body\">");
    printf("<img src=\"img/portfolio/figureText".($i+1).".jpg\" class=\"img-responsive\" alt=\"\">");
    printf("<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\"><i class=\"fa fa-times\"></i> Cerrar</button>");
    printf("</div>");
    printf("</div>");
    printf("</div>");
    printf("</div>");
    printf("</div>");
    printf("</div>");
}
?>