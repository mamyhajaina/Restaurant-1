 <%@page import="view.IngredientParPlat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="view.ListeMenu"%>
<%@page import="services.ServicePlat"%>
<%@page import="services.ServiceTable"%>
<%@page import="services.ServiceIngredient"%>
<%@page import="services.ServiceServeur"%>
<%
ListeMenu lm= ServicePlat.getMenuById(Integer.parseInt(request.getParameter("id")));
String plat=request.getParameter("id");
ArrayList<IngredientParPlat> lipp=ServiceIngredient.getListIngredientParPlat(Integer.parseInt(plat));
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Food Code Proudly Presents By Themexpert</title>
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
					<h1>Ingredients dans <%out.print(lm.getNom_plat());%></h1>
					<p></p>
				</div>	<!-- /.col-md-4 -->
				<div class="col-md-8 hidden-xs">
					<ol class="breadcrumb pull-right">
					  	 
					  	<li><a href="#">Plat</a></li>
					  	<li class="active">Ingredients</li>
					</ol>
				</div> <!-- /.col-md-8 -->
			</div>	<!-- /.row -->
		</div>	<!-- /.container-->
	</section><!-- /Section -->




	<section id="single-product">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="single-product-img">
						<img src="images/single-product.png" alt="">
					</div>

				</div> <!-- End of /.col-md-5 -->
				<div class="col-md-4">
					<div class="block">
						<div class="product-des">
							<h4><%out.print(lm.getNom_plat());%></h4>
							<p class="price"><%out.print(lm.getPrix_de_revient());%> Ar</p>
							 <a class="view-link" href="newCommand.jsp?id=<%out.print(plat);%>"><i class="fa fa-plus-circle"></i>Commander</a>
						</div>	<!-- End of /.product-des -->
					</div> <!-- End of /.block -->
				</div>	<!-- End of /.col-md-4 -->
				<div class="col-md-3">
					<div class="blog-sidebar">
						<div class="block">
							<h4 class="top-catagori-heading">Ingredients</h4>
							<ul class="media-list">
							 	 <%for(int i=0;i<lipp.size();i++){%>
							  	<li class="media">
							    	<a class="pull-left" href="#">
							      		<img class="media-object" src="images/post-img-2.png" alt="...">
							    	</a>
							    	<div class="media-body">
                                 <a style="font-size: 20px" href="" class="media-heading"> <%out.print(lipp.get(i).getNom_ingredient());%>
					 <p style="font-size: 20px"> <%out.print(lipp.get(i).getQte_ingredient());%> g</p></a>
							    	</div>
							  	</li>	
                                                                <% } %>
							</ul>	 
						</div> 
						
					</div> 
						
				</div> 
			</div>	 
			 
		</div>	 
	</section>  
</body>
</html>