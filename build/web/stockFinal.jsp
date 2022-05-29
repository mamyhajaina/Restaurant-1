<%@page import="model.Stock"%>
<%@page import="services.ServiceStock"%>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<Stock> list=  ServiceStock.getStockFinal();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Stock</title>
</head>
<body>
   
 
 
	  <jsp:include page="menu.jsp" />  
        
<div class="container">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-11">
<div class="card">
  <div class="card-header">
  </div>
  
    <br>
    <br>
    
  <div class="card-body">
       <form action="Stock_toExcel" method="post"> 
      <h3> LISTE RESTE STOCK</h3>
     
      <table class="table table-striped">
        <tr>
          <th>Nom Ingredient</th>
          <th>Total Entree</th> 
          <th>Total Sortie</th> 
          <th>Reste</th> 
         </tr>
       <%for(int i=0;i<list.size();i++){%>
          <tr>
              <td> <%out.print(list.get(i).getNom_ingredient());%></td>
              <td> <%out.print(list.get(i).getId_stock());%></td>  
                <td> <%out.print(list.get(i).getPrix());%></td> 
                <td> <%out.print(list.get(i).getQte_stock());%></td> 
           </tr>   
          <% } %>
      </table>
      <div>
        <button style="width: 300px;height:50px" type="submit" class="btn btn-primary">Export Excel</button>
         </div>
      </form>
  </div>
    </div>
    
</div></div>
</div>
</body>
</html>

