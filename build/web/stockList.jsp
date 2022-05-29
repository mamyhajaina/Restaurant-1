<%@page import="model.Stock"%>
 
<%@page import="java.util.ArrayList"%>
<%
ArrayList<Stock> list= (ArrayList<Stock>)request.getAttribute("listStock");
String type=(String)request.getAttribute("type");
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
        <div class="col-md-3"></div>
        <div class="col-md-8">
<div class="card">
  <div class="card-header">
  </div>
    <form action="ListStockWithDate" method="post">
            <div class="form-group">
                
            <label class="control-label">date 1 :</label>
            <input type="date" name="date1" class="form-control"/>
           
            <label class="control-label">date 2 :</label>
            <input type="date" name="date2" class="form-control"/>
            
             <select name="entree_ou_sortie" class="form-control"> 
                 <option value="0_Entree"> Entree </option>
                 <option value="1_Sortie"> Sortie </option>
             </select>
            </div>
            
            <div>
                <button type="submit" class="btn btn-primary">Valider</button>
            </div>
    </form>
    <br>
    <br>
    
  <div class="card-body">
       <% if(list.size()>0) {%> 
       <h3>Mouvement <%out.print(type);%></h3>
       
      <table class="table table-striped">
        <tr>
          <th>Nom Ingredient</th>
          <th>Quantite</th>
          <th>Date <%out.print(type);%></th>
         </tr>
         <%for(int i=0;i<list.size();i++){%>
          <tr>
              <td><%out.print(list.get(i).getNom_ingredient());%></td>
              <td><%out.print(list.get(i).getQte_stock());%></td>
              <td><%out.print(list.get(i).getDate_entree());%></td>
           </tr>   
           <% } %>
      </table>
         
     
       <% } %>
       <%if(list.size()==0){%>
       <h3>Il n'y a pas pas d'entree et de sortie stock aujourd'hui</h3>
       <% } %>
  </div>
  </div>
    
</div></div>
</div>
</body>
</html>

