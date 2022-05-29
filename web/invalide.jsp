<%
String id= request.getParameter("id");
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
             
    </div>
     <hr>
     <div style="margin-top:80px" class="row">
         <div  class="col-md-4">
             <h1>Sur table</h1>
          <form method="post" action="ValiderCommande" onSubmit="return confirm('Voulez-vous valider ce commande ?');">
       
      <input type="hidden" name="serveur" value="">
      <input type="hidden" name="table" value="">
       <p> <input type="submit" value="VALIDER COMMANDE"></p>
         </form>
         </div>
          <div class="col-md-4">  
           <div class="form-group">
                    
                    <label class="control-label">
                        mode de payement :
                    </label>
                    <select name="" class="form-control">
                        <option value=""></option>
                    </select>
         </div>
          </div>
     
        <div class="col-md-4">
               <h1>Livraison Lieu</h1>
              <form method="post" action="ValiderCommandeLivre" onSubmit="return confirm('Voulez-vous valider ce commande ?');">
                  <p>Adresse: <input type="text" name="adresse" placeholder="Adresse"> </p>
       <p>Telephone:  <input type="text" name="telephone" placeholder="Telephone">
        <p>Date de livraison: <input type="date" name="date_livraison"></p> 
      <input type="hidden" name="serveur" value="">
      <input type="hidden" name="table" value="">
       <p> <input type="submit" value="VALIDER COMMANDE"></p>
         </form>
         </div>
     </div>
 
    <a href="index.jsp">Retour</a>
    
    
  </div>	<!-- End of /.container -->
	</section> <!-- End of Section -->


	
	<!-- FEATURES Start
    ================================================== -->

	 
	
	<a id="back-top" href="#"></a>
</body>
</html>