 <%@page import="services.ServiceTypeUser"%>
<%@page import="model.Type_user"%>
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
            <div class="card-body">
                <form action="InsertUtilisateur" method="post">
                <div class="form-group">
                    
                    <label class="control-label">
                       Login :
                    </label>
                    <input type="text" name="login" class="form-control"/>
                </div>

                <div class="form-group">
                    
                    <label class="control-label">
                        Mot de passe :
                    </label>
                     <input type="password" name="password" class="form-control"/>
                </div>
                    <div class="form-group">
                    
                    <label class="control-label">
                       Type d'utilisateur:
                    </label>
                    <select name="type_user" class="form-control">
                        <% for(int i=0;i<ServiceTypeUser.getAllTypeUser().size();i++){%>
                        <option value="<%out.print(ServiceTypeUser.getAllTypeUser().get(i).getId_type_user());%>"><%out.print(ServiceTypeUser.getAllTypeUser().get(i).getNom_type_user());%></option>
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