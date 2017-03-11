<div id="content">
    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <section id="portfolio">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2>Servicios</h2>
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
                        printf("<a onclick=\"setModalData(".($i+1).");\" href=\"#\" class=\"portfolio-link\">");
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

<script>
    function setModalData(i) {
        $(".modal-header").css({ 'height': "10vh" });
        $( "#modalBody" ).empty().append(
            "<img src=\"img/portfolio/figureText"+i+".jpg\" class=\"img-responsive\" alt=\"\">" );
        $( "#modalFooter" ).empty();

        document.getElementById('myModal').style.display = "inline-table";
    }
</script>
