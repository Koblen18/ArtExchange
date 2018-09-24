<%-- 
    Document   : formulaire.jsp
    Created on : Sep 16, 2018, 6:32:07 PM
    Author     : Salahudine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
      <meta charset="utf-8" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>


     <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
     
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

  <link rel="stylesheet" href="css/myCSS.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <title>Formulaire d inscription</title>
        <style>
            text.error{
                color : red;
            }
        </style>

</head>
    
    <body>
        <jsp:include page="menu.jsp"/>
        <div class="panel panel-default ">
					
					<div class="panel-body">
						<form id="signupForm" method="get" class="form-horizontal"
							action="afficherEtudiant">
                                                    
                                                
                                                         
							<div class="form-group">
								<label class="col-sm-4 control-label" for="prenom">Prenom:</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="prenom"
										name="prenom" placeholder="prenom" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label" for="nom">Nom:</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="nom"
										name="nom" placeholder="nom" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-4 control-label" for="email">Email :</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="email"
										name="email" placeholder="Email" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label" for="password">Mot de passe :</label>
								<div class="col-sm-5">
									<input type="password" class="form-control" id="password"
										name="password" placeholder="Password" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label" for="confirm_password">Confirmation du mot de passe</label>
								<div class="col-sm-5">
									<input type="password" class="form-control"
										id="confirm_password1" name="confirm_password"
										placeholder="Confirm password" />
								</div>
							</div>
                                                    <div class="form-group">
								<label class="col-sm-4 control-label" for="date">Date de naissance :</label>
							 <div class="col-sm-5">
                                                                <input type="date"
									name="age" class="form-control" id="date" />
							</div>
                                                        </div>
							<div class="form-group">
								<label  class="col-sm-4 control-label" for="photo">Photo : </label>
                                                           <div class="col-sm-5">      
                                                                <input type="file"
									name="photo" class="form-control" id="photo" title ="La photo est obligatoire" />
							</div>
                                                        </div>
                                                          
                                  
							
                                                    
							<div class="form-group">
								<div class="col-sm-9 col-sm-offset-4">
								

                                                                        <input type="submit"  class="btn btn-primary btn-lg" 
                                                                               value="Inscription"  id="submit" disabled="disabled"/>
                                                                  
								</div>
							</div>
						</form>
					</div>
				</div>
       
        
        <script src="js/ValidationFormulaire.js"></script>
        
	 
        <jsp:include page="footer.jsp"/>
    </body>
</html>

