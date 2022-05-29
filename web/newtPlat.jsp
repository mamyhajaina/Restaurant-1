 <%@page import="services.ServiceCategorie"%>
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
	<link rel="stylesheet" href="css/owl.theme.css">
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

	 

	<section id="slider-area">
		<div class="container">
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <h3>Ajouter nouveau plat</h3>
            <div class="card-body">
                <form action="InsertPlat" method="post">
                <div class="form-group">
                    <label class="control-label">
                        Nom :
                    </label>
                    <input type="text" name="nom_plat" class="form-control"/>
                </div>

                <div class="form-group">
                    
                    <label class="control-label">
                        Catégorie :
                    </label>
                    <select name="categorie" class="form-control">
                        <% for(int i=0;i<ServiceCategorie.getAllCategorie().size();i++){%>
     <option value="<%out.print(ServiceCategorie.getAllCategorie().get(i).getId_categorie()); %>"><%out.print(ServiceCategorie.getAllCategorie().get(i).getNom_categorie()); %></option>
                        <% } %>
                    </select>
                </div>

                <div>
                    <button type="submit" class="btn btn-primary">
                        Ajouter
                    </button>
                </div>
                </form>	
                </div>
                             <div class="col-md-4"></div>
            </div></div>
            
        </div>	<!-- End of /.container -->
	</section> <!-- End of Section -->


	
	<!-- FEATURES Start
    ================================================== -->

	 
	
	<a id="back-top" href="#"></a>
</body>
</html>