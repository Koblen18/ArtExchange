<%-- 
    Document   : login
    Created on : 2018-09-29, 17:08:34
    Author     : usager
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="w3-third">
        <form action="login" method="get">
            <input type="text" name="nom" placeholder="Nom" required autofocus>
            <input type="password" name="password" placeholder="Password" required>
            <button  type="submit">Sign in</button>
            <label >
                <input type="checkbox" name="sauvegarde" value="yes">
                Remember me </br>
            </label>
        </form>
    </body>
</html>
