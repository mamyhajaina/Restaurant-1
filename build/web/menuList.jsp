<%@page import="services.ServiceCategorie"%>
<%@page import="view.ListeMenu"%>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<ListeMenu> listMenu= (ArrayList<ListeMenu>)request.getAttribute("listMenu");
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
					<h1>Liste menu</h1>
					 
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
                                                <%for(int i=0;i<listMenu.size();i++){%>
					        <li>
					            <div class="products">
									<a href="#">
										<img src="images/product-image-8.jpg" alt="">
									</a>
									<a href="#">
                                                                            <h4><%out.print(listMenu.get(i).getNom_plat());%></h4>
									</a>
									<p class="price">Prix : <%out.print(listMenu.get(i).getPrix_de_revient());%> Ar</p>
									<div >
							 <a class="view-link shutter" href="newCommand.jsp?id=<%out.print(listMenu.get(i).getId_plat());%>">
										<i class="fa fa-plus-circle"></i>Commander</a>
									</div>
                                                                        <div >
							 <a class="view-link shutter" href="ingredientPlat.jsp?id=<%out.print(listMenu.get(i).getId_plat());%>">
										<i class="fa fa-plus-circle"></i>Ingredients</a>
									</div>
						    </div>	 
					        </li>
                                                <% } %> 
					    </ul>
					</div> 

					 
				</div>	 
				<div class="col-md-3">
					<div class="blog-sidebar">
						<div class="block">
							<h4>Categories</h4>
                                                       
							<div class="list-group">
                                                          <a href="ListAllMenu" class="list-group-item">
							 <i class="fa  fa-dot-circle-o"></i>
                                                                 Tous
							 </a>
                                            <%for(int i=0;i<ServiceCategorie.getAllCategorie().size();i++){%>
			 <a href="ListMenuByCategorie?id= <%out.print(ServiceCategorie.getAllCategorie().get(i).getId_categorie());%>" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
                                             <%out.print(ServiceCategorie.getAllCategorie().get(i).getNom_categorie());%>
								</a>
                                            <% } %>
							</div>
						</div>
						
				</div>	<!-- End of /.col-md-3 -->
			
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of Section -->
