 <section id="top">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
                                     <h5>Utilisateur : <%out.print((String)session.getAttribute("log"));%></h5>
					 </div>
				<div class="col-md-3 clearfix">
                                   
					<ul class="login-cart">
						<li>
							<a    href="index.jsp?logout=1">
							<i class="fa fa-user" style="font-size: 30px"></i>
								Logout
							</a>
						</li>
						<li>
						 
						</li>
					</ul>
				</div>
				 
			</div> <!-- End Of /.row -->
		</div>	 
 
	</section>  
	
	<header>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<a href="#">
						<img src="images/logo.png" alt="logo">
					</a>
				</div> 
			</div>	 
		</div> 
	</header>  
	<nav class="navbar navbar-default">
		<div class="container">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		    </div> <!-- End of /.navbar-header -->

		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      	<ul class="nav navbar-nav nav-main">
                                      <li class="dropdown">
						<a href="accueil.jsp">
							Accueil
							<span class="caret"></span>
						</a>
						 
					</li>
					 
					<li class="dropdown">
						<a href="#">
							Ingredient
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
						   <li><a  href="newIngredient.jsp">Ajouter nouveau Ingredient</a></li>
                                                     <li><a  href="stockIngredient.jsp">Ajouter stock Ingredient</a></li>
                                                     <li><a  href="ListStock">Entree/Sortie</a></li> 
						    <li><a  href="stockFinal.jsp">Stock</a></li> 
						</ul>
					</li>  
                                        <li class="dropdown">
						<a href="#">
							Plat
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
						   <li><a  href="newtPlat.jsp">Ajouter nouveau plat</a></li>
						    <li><a  href="ListAllMenu">Liste Menu</a></li> 
                                                     <li><a  href="ListAllMenu">Recette</a></li> 
						</ul>
					</li>
                                        <li class="dropdown">
						<a href="#">
							Commande
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
						   <li><a  href="valide.jsp">Valide</a></li>
						    <li><a  href="listeInvalide.jsp">Invalide</a></li> 
						</ul>
					</li>
                                        <li class="dropdown">
						<a href="#">
							Caisse
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
						   
						    <li><a  href="listePaiement.jsp">Liste paiement</a></li> 
						</ul>
					</li>
                                        <li class="dropdown">
						<a href="#">
							Cuisine
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
						   <li><a  href="cuisine.jsp">Fin de cuisine</a></li> 
						</ul>
					</li>
                                        <li class="dropdown">
						<a href="#">
							Livraison
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
						 
						    <li><a  href="listeLivraison.jsp">Liste des livraisons</a></li> 
						</ul>
					</li>
                                        
                                        
                                          <li class="dropdown">
						<a href="#">
							Statistique
							<span class="caret"></span>
						</a>
						 
					</li>
                                        <%if(((String)session.getAttribute("log")).compareTo("Jean")==0) {%>
                                          <li class="dropdown">
						<a href="#">
							Admin
							<span class="caret"></span>
						</a>
						 
					</li>
                                         <li class="dropdown">
						<a href="#">
							Utilisateur/Table
							<span class="caret"></span>
						</a>
						 <ul class="dropdown-menu">
						   <li><a  href="newUtilisateur.jsp">Ajouter utilisateur</a></li>
						    <li><a  href="newTable.jsp">Ajouter table </a></li> 
						</ul>
					</li>
                                        <% } %>

					
		        </ul> <!-- End of /.nav-main -->
		    </div>	<!-- /.navbar-collapse -->
		</div>	<!-- /.container-fluid -->
	</nav>	<!-- End of /.nav -->