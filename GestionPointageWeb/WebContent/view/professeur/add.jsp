<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Gestion Pointage EJB | GB SMART</title>
        <link rel="icon" type="image/x-icon" href="public/assets/images/favicons/favicon.ico" />
        <link rel="icon" type="image/png" href="public/assets/images/favicons/favicon.png" />
        <!-- For iPhone 4 Retina display: -->
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="public/assets/images/favicons/apple-touch-icon-114x114-precomposed.png">
        <!-- For iPad: -->
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="public/assets/images/favicons/apple-touch-icon-72x72-precomposed.png">
        <!-- For iPhone: -->
        <link rel="apple-touch-icon-precomposed" href="public/assets/images/favicons/apple-touch-icon-60x60-precomposed.png">
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,400italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="public/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="public/assets/css/theme.min.css">
        <link rel="stylesheet" href="public/assets/css/color-defaults.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-beige-black.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-black-beige.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-black-white.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-black-yellow.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-blue-white.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-green-white.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-red-white.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-white-black.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-white-blue.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-white-green.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-white-red.min.css">
        <link rel="stylesheet" href="public/assets/css/swatch-yellow-black.min.css">
        <link rel="stylesheet" href="public/assets/css/fonts.min.css" media="screen">
        <script src="public/js/jquery.js"></script>
    <script src="public/js/jquery-ui.js"></script>
    <script src="public/js/jquery-3.2.1.min.js"></script>
    </head>
    <body>
        <header id="masthead" class="navbar navbar-sticky swatch-red-white" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".main-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="" class="navbar-brand">
                        <img src="public/assets/images/logo.png" alt="One of the best themes ever">Gestion POINTAGE
                    </a>
                </div>
                <nav class="collapse navbar-collapse main-navbar" role="navigation">
                    <div class="sidebar-widget widget_search pull-right">
                        
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown ">
                            <a href="Professeur" >Liste</a>
                            
                        </li>
                        
                        
                    </ul>
                </nav>
            </div>
        </header>
<div id="content" role="main">
            
           
            
                <div class="decor-top">
                    <svg class="decor hidden-xs hidden-sm" height="100%" preserveaspectratio="none" version="1.1" viewbox="0 0 100 100" width="100%" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0 100 L2 60 L4 100 L6 60 L8 100 L10 60 L12 100 L14 60 L16 100 L18 60 L20 100 L22 60 L24 100 L26 60 L28 100 L30 60 L32 100 L34 60 L36 100 L38 60 L40 100 L42 60 L44 100 L46 60 L48 100 L50 60 L52 100 L54 60 L56 100 L58 60 L60 100 L62 60 L64 100 L66 60 L68 100 L70 60 L72 100 L74 60 L76 100 L78 60 L80 100 L82 60 L84 100 L86 60 L88 100 L90 60 L92 100 L94 60 L96 100 L98 60 L100 100 Z"
                        stroke-width="0"></path>
                    </svg>
                    <svg class="decor visible-xs visible-sm" height="100%" preserveaspectratio="none" version="1.1" viewbox="0 0 100 100" width="100%" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0 100 L5 60 L10 100 L5 60 L10 100 L15 60 L20 100 L25 60 L30 100 L35 60 L40 100 L45 60 L50 100 L55 60 L60 100 L65 60 L70 100 L75 60 L80 100 L85 60 L90 100 L95 60 L100 100" stroke-width="0"></path>
                    </svg>
                </div>
                
            </section>
            <section class="section swatch-white-red has-top">
                
                <div class="container">
                    <header class="section-header underline">
                        <h1 class="headline super hairline">Liste des Professeurs</h1>
                    </header>
                    <div class="row-fluid">
                        <div class="span12">
                        <c:if test="${result==1}">
                                <div id="message" class="alert alert-success">Professeur ajoute avec success</div>
                                </c:if>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nom</th>
                                        <th>Prenom</th>
                                        <th>Salaire</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <c:if test="${professeurs !=null }">
									   <c:forEach items="${professeurs}" var="prof">
                                    <tr>
                                      
									   <td>${prof.id }</td>
                                        <td>${prof.nomP}</td>
                                        <td>${prof.prenomP}</td>
                                        <td>${prof.salaire}</td>
									    
									   
                                    </tr>
                                    </c:forEach>
									   </c:if>
                                </tbody>
                            </table>
                            
                        </div>
                    </div>
                </div>
            </section>
            
            <footer id="footer" role="contentinfo">
                <section class="section swatch-red-white has-top">
                    <div class="decor-top">
                        <svg class="decor" height="100%" preserveaspectratio="none" version="1.1" viewbox="0 0 100 100" width="100%" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0 0 L50 100 L100 0 L100 100 L0 100" stroke-width="0"></path>
                        </svg>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <div id="swatch_social-2" class="sidebar-widget  widget_swatch_social">
                                   
                                </div>
                                <div id="text-4" class="sidebar-widget widget_text">
                                    <div class="textwidget">gaye birane
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </footer>
        </div>
        <a class="go-top hex-alt" href="javascript:void(0)">
            <i class="fa fa-angle-up"></i>
        </a>
        <script src="public/assets/js/packages.min.js"></script>
        <script src="public/assets/js/theme.min.js"></script>
        <script>
    $(document).ready(function(){
        $("#message").show().fadeOut(15000).css("color","blue");
    });
</script>
    </body>
</html>