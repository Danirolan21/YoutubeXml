<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

</head>

<body>
    <img src="img/channels4_banner.jpg" alt="" class="img-fluid"/>
    <div class="bg-black">
        <div class="container pt-4">
            <header class="d-flex align-items-start">
                <div class="col-lg-2">
                    <img src="img/unnamed.jpg" alt="" class="img-fluid rounded-circle me-4"/>
                </div>
                <div class="col-lg-8">
                    <h2 class="text-light pt-4">Alvama Ice</h2>
                    <p class="text-light opacity-75"><b>@AlvamaIce249</b> 249 K suscriptores 73 vídeos</p>
                    <div class="d-flex align-items-center">
                        <p class="text-light opacity-75 me-2">Esto es Alvama Ice.</p>
                        <p class="text-light opacity-75 fs-5"><i class="fa fa-chevron-right" style="cursor: pointer;"
                                aria-hidden="true"></i></p>
                    </div>
                </div>
                <div class="col-lg-2" style="cursor: pointer;">
                    <div class="w-75 mx-auto bg-dark text-light rounded-pill d-flex justify-content-center align-items-center px-5">
                        <i class="fa fa-bell" aria-hidden="true"></i>
                        <p class="my-2 px-2">Suscrito</p>
                        <i class="fa fa-chevron-down" aria-hidden="true"></i>
                    </div>
                </div>
            </header>
            <div class="col-12 overflow-hidden">
                <nav class="container mt-3 h-100 d-flex flex-column flex-md-row justify-content-around">
                    <a class="py-2 px-4 d-none d-md-inline-block text-decoration-none text-light opacity-75"
                        href="#">INICIO</a>
                    <a class="py-2 px-4 d-none d-md-inline-block text-decoration-none text-light border-bottom border-3"
                        href="#"><b>VÍDEOS</b></a>
                    <a class="py-2 px-4 d-none d-md-inline-block text-decoration-none text-light opacity-75"
                        href="#">SHORTS</a>
                    <a class="py-2 px-4 d-none d-md-inline-block text-decoration-none text-light opacity-75"
                        href="#">LISTAS</a>
                    <a class="py-2 px-4 d-none d-md-inline-block text-decoration-none text-light opacity-75"
                        href="#">COMUNIDAD</a>
                    <a class="py-2 px-4 d-none d-md-inline-block text-decoration-none text-light opacity-75"
                        href="#">CANALES</a>
                    <a class="py-2 px-4 d-none d-md-inline-block text-decoration-none text-light opacity-75"
                        href="#">INFORMACIÓN</a>
                    <a class="py-2 px-4 d-none d-md-inline-block text-decoration-none text-light opacity-75" href="#"><i
                            class="fa fa-search" aria-hidden="true"></i></a>
                    <a class="py-2 px-4 d-none d-md-inline-block text-decoration-none text-light opacity-75" href="#"><i
                            class="fa fa-chevron-right" aria-hidden="true"></i></a>
                </nav>
            </div>
        </div>
        <hr class="border mt-0"/>
        <div class="container">
            <div class="d-flex">
                <p class="bg-light text-black rounded px-2 py-1 me-3">Más recientes</p>
                <p class="bg-dark text-light rounded px-2 py-1">Populares</p>
            </div>
            <div class="row justify-content-md-start justify-content-sm-around">
                <xsl:for-each select="YouTube/Video">
					<div class="col-xl-3 col-lg-4 col-md-6 col-sm-8">
						<div class="card bg-transparent text-light">
							<div class="position-relative">
								<img class="card-img-top rounded" src="{Imagen}" alt="Title"/>
								<p class="bg-black bg-opacity-75 px-1 rounded position-absolute bottom-0 end-0 mb-1 me-1"><xsl:value-of select="Tiempo"/></p>
							</div>
							<div class="card-body ps-0">
								<h4 class="card-title fs-6"><xsl:value-of select="Titulo"/></h4>
								<p class="card-text opacity-75"><xsl:value-of select="Visualizaciones"/></p>
							</div>
						</div>
					</div>
				</xsl:for-each>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>

</html>

</xsl:template>
</xsl:stylesheet>