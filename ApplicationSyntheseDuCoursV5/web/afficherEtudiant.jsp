<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import ="com.entities.Etudiant" %>
 <%@page import ="java.util.ArrayList" %>
  <%@page import ="com.controller.AfficherEtudiant" %>   
    
    
    
<%  
    ArrayList<Etudiant> listEtudiant = (ArrayList)request.getAttribute(AfficherEtudiant.CLE_DONNEE);
%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Application etudiants</title>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/myCSS.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/styleExo3.css">
</head>
<body>
 <jsp:include page="menu.jsp"/>
  <%@include file="sidebar_gauche.html"%>
  <%@include file="sidebar_droite.html"%>
   <table style="width:70%">
    <tr>
      <th>Id</th>
      <th>Images</th>
      <th>Nom</th>
      <th>Prenom</th>
      <th>Age</th>
       <th>Email</th>
        <th>Password</th>
    </tr>
    
    <%
       for(Etudiant etud : listEtudiant){
        
        
    %>
    <tr>
      <td> <%=etud.getId() %> </td>
     <td>
    <img alt="etu image" src="images/<%=etud.getImgLink()%>" height="42" width="50"/> 
    </td> 
      <td> <%=etud.getNom() %> </td>
     <td> <%=etud.getPrenom() %> </td>
      <td> <%=etud.getAge() %> </td>
      <td> <%=etud.getEmail() %> </td>
      <td> <%=etud.getPassword() %> </td>
     </tr>
   
   <% } %>
   </table>

     
</body>
  <jsp:include page="footer.jsp"/>	
</html>