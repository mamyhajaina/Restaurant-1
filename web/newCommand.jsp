 <%@page import="view.ListeMenu"%>
<%@page import="services.ServicePlat"%>
<%@page import="services.ServiceLogin"%>
<%@page import="services.ServiceTable"%>
<%@page import="services.ServiceServeur"%>
<%String user=(String)session.getAttribute("log");%>
<%
ListeMenu lm= ServicePlat.getMenuById(Integer.parseInt(request.getParameter("id")));
String plat=request.getParameter("id");
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
					<h1>COMMANDE</h1>
					 
				</div>	<!-- End of /.col-md-4 -->	
				<div class="col-md-8 hidden-xs">
					<ol class="breadcrumb pull-right">
					  	<li><a href="#">Plat</a></li>
					  	<li class="active">Commande</li>
					</ol>
				</div>	<!-- End of /.col-md-8 -->
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of /#Topic-header -->


	<section id="blog">
		<div class="container">
			<div class="row">
				<div class="col-md-9 clearfix">
					<ul class="blog-zone">
					    <li>
					        <div class="blog-icon">
					        	<i class="fa  fa-pencil"></i>
					        </div>
					        <div class="blog-box">
                                                     <div class="blog-post-body clearfix">
						            <a href="blog-single.html">
					            		<h2> <%out.println(lm.getNom_plat());%> </h2>
						            </a>
					            	<div class="blog-post-tag">
						            	<div class="block">
						            		<i class="fa fa-clock-o"></i>
						            		<h6>  <%out.print(lm.getNom_categorie());%> </h6>
						            	</div>
						            	 
						            </div>
						           
					            </div>
					        	<img src="images/blog-1.jpg" alt="">
					            
					           
					        </div>	<!-- End of /.blog-box -->
					    </li>
					   
					    <li>
					       <div class="blog-icon">
					        	<i class="fa fa-music"></i>
					        </div>


					        
					    </li>
					  </ul>	<!-- End of /.blog-zone -->

					<!-- Pagination -->
					 
				</div>	<!-- End of /.col-md-9 -->

				<div class="col-md-3">
                                    <div class="blog-sidebar">
                                        <div class="form-group">
                                            <form action="InsertCommande" method="post">
                                             
                                     <input type="hidden" name="plat" value="<%out.print(plat);%>">
                                                 <br>  
                                                    <label class="control-label">
                                                             Table :
                                                     </label>
                                                    <select name="table" class="form-control">
                                                        <%for(int i=0;i<ServiceTable.getAllTable().size();i++){%>
   <option value="<%out.print(ServiceTable.getAllTable().get(i).getId_table());%>">Table <%out.print(ServiceTable.getAllTable().get(i).getId_table());%></option>
                                                        <% } %>
                                                    </select>
                                                 <br>  
                                                 <input type="hidden" name="serveur" value="<%out.print(ServiceLogin.getServeurObject(user).getId_serveur());%>">
                                                <br>
                                                 <div class="form-group">
                                                     <label class="control-label">
                                                             Quantite :
                                                     </label>
                                                  <input type="number" min="1" name="quantite" class="form-control"/>
                                                 </div>
                                                        <div>
                                                            <button type="submit" class="btn btn-primary">Valider</button>
                                                        </div>
                                            </form>
                                        </div><!-- End of /.block -->

						
					</div>	<!-- End of /.blog-sidebar -->
				</div>	<!-- End of /.col-md-3 -->
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of /#Blog -->