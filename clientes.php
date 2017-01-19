<div id="content">
    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <section id="portfolio">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2>Clientes</h2>
                            <hr class="star-primary">
                        </div>
                    </div>
                    <?php
                    for($i=0; $i<21; $i++){
                        if($i==0){
                            printf("<div class=\"row\">");
                        }

                        printf("<div class=\"col-sm-4 portfolio-item\">");
                        printf("<img src=\"img/clientes/cliente".($i+1).".JPG\" class=\"img-responsive\" alt=\"\">");
                        printf("</div>");

                        if( ((($i+1)%3)==0)){
                            printf("</div>");
                            printf("<div class=\"row\">");
                        }
                    }
                    printf("</div>");
                    ?>
                </div>
            </section>
        </main>
    </div>
</div>
<br>
