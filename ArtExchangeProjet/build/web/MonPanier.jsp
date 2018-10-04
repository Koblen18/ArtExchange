<%-- 
    Document   : MonPanier
    Created on : 2018-10-03, 21:55:14
    Author     : usager
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.action.OeuvreAction"%>
<%@page import="com.entities.Oeuvres"%>
<%@page import="com.entities.Panier"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mon Panier</title>
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
        <div class="w3-main" style="margin-left:300px">

            <!-- Push down content on small screens --> 
            <div class="w3-hide-large" style="margin-top:83px"></div>
            <%
                ArrayList<Panier> panierListe = (ArrayList<Panier>) request.getAttribute("Panier");
                if (panierListe != null) {
                    Iterator<Panier> panIte = panierListe.iterator();
                    for (int i = 0; i < panierListe.size() / 3; i++) {
                        int j = 0;
            %>
            <div class="w3-third">
                <%  while (panIte.hasNext() && (j != 3)) {
                        j++;
                        Panier pan = panIte.next();
                        Oeuvres o1 = OeuvreAction.afficherOeuvreParID(pan.getIdoeuvre());
                %>
                <img src="<%=o1.getImgLink()%>" style="width:100%" onclick="onClick(this)" alt="<%=o1.getDescriptionOeuvre()%>">
                <% }%>
            </div>
            <%
                    }
                }
            %>
            <h1>Hello World!</h1>
        </div>
    </body>
    <jsp:include page="footer.jsp"/>
    <script>
// Script to open and close sidebar
        function w3_open() {
            document.getElementById("mySidebar").style.display = "block";
            document.getElementById("myOverlay").style.display = "block";
        }

        function w3_close() {
            document.getElementById("mySidebar").style.display = "none";
            document.getElementById("myOverlay").style.display = "none";
        }

// Modal Image Gallery
        function onClick(element) {
            document.getElementById("img01").src = element.src;
            document.getElementById("modal01").style.display = "block";
            var captionText = document.getElementById("caption");
            captionText.innerHTML = element.alt;
        }

    </script>
</html>