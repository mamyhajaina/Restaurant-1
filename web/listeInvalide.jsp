<%@page import="model.Commande"%>
<%@page import="services.ServiceCommande"%>
<%@page import="view.ListeMenu"%>
<%@page import="java.util.ArrayList"%>
 <%
 ArrayList<Commande> list=ServiceCommande.getListeCommande("false");
 %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Restaurant</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<!-- Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700' rel='stylesheet' type='text/css'>

	<!-- Css -->
	<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" />
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">

	<!-- jS -->
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
	<script src="js/owl.carousel.min.js" type="text/javascript"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/main.js" type="text/javascript"></script>


</head>
<body> 
 
  <jsp:include page="menu.jsp" />  



	<section id="topic-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<h1>Liste commandes invalides</h1>
					 
				</div>	<!-- End of /.col-md-4 -->
				<div class="col-md-8 hidden-xs">
					<ol class="breadcrumb pull-right">
					  	<li><a href="#">Plat</a></li>
					  	<li class="active">Menu</li>
					</ol>
				</div> 
			</div> 
		</div> 
	</section>	 

 
	<section id="shop">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					 
					<div class="product-grid">
					    <ul>
                                                <%for(int i=0;i<list.size();i++){%>
					        <li>
					            <div class="products">
									<a href="#">
										<img src="images/product-image-8.jpg" alt="">
									</a>
									<a href="#">
                          <h5>Serveur:<%out.print(list.get(i).getNom_serveur());%></h5>
									</a>
  <p class="price"> <%out.print(list.get(i).getPrix_de_revient());%> <%out.print(list.get(i).getNom_plat());%></p>
									
                                                                        <div >
                                                                            <a class="view-link shutter" href="DeleteCommande?id=<%out.print(list.get(i).getDate_commande());%>_<%out.print(list.get(i).getNom_categorie());%>" >
										<i class="fa fa-plus-circle"></i>Supprimer</a>
									</div>
                                                                      
						    </div>	 
					        </li>
                                                <% } %>
                                               
					    </ul>
                                            
					</div> 

					 
				</div>	 
                                                <div class="col-md-3">
                                                    <div >
							 <a class="view-link shutter" href="invalide.jsp">  
							  </i>Valider les commandes</a>
						    </div>
                                                </div>
				 
		</div>	<!-- End of /.container -->
	</section>	<!-- End of Section -->
