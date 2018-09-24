<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <title>Application etudiants</title>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/myCSS.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<style>
    .rouge{
        color :red;
    }
</style>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <% if( session.getAttribute("nom")!=null) { %>
<marquee>    Bienvenue Mr/Mm <span class="rouge">  <%=session.getAttribute("nom")  %> </span>  au College de Rosemont </marquee>
<%}%>
    <img src="./images/crosemont.jpg"  class="img-circle person" alt="Random Name" width="255" height="255">

</body>
<jsp:include page="footer.jsp"/>
</html>