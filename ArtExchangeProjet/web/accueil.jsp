<%-- 
    Document   : accueil
    Created on : 2018-09-29, 16:26:24
    Author     : usager
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--    -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <style>
            body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
            .w3-third img{margin-bottom: -6px; opacity: 0.8; cursor: pointer}
            .w3-third img:hover{opacity: 1}
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"/>
        <jsp:include page="pagePrincipale.jsp"/>
    </body>
    <jsp:include page="footer.jsp"/>
</html>
