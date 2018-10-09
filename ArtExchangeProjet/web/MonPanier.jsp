<%-- 
    Document   : MonPanier
    Created on : 2018-10-03, 21:55:14
    Author     : usager
--%>

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
            img{
                max-width:450px;
                max-height:450px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"/>
        <div class="w3-main" style="margin-left:300px">

            <h1>Votre Panier d'achat</h1>
            <table border="1" width="60%" style="margin: 0 auto;text-align:center">
                <thead>
                    <tr>
                        <th>Quantité</th>
                        <th>NomOeuvre</th>
                        <th>DescriptionOeuvre</th>
                        <th>Prix</th>
                        <th>Photo</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        double total = 0;
                        HttpSession sessio = request.getSession();
                        ArrayList<Panier> paniers = (ArrayList<Panier>) sessio.getAttribute("listOe");
                        if (paniers != null) {
                            for (Panier p : paniers) {
                                total += p.getQuantite() * p.getOeuvre().getPrixOeuvre();

                    %>
                    <tr>
                        <td><%= p.getQuantite()%></td>
                        <td><%= p.getOeuvre().getNomOeuvre()%></td>
                        <td><%= p.getOeuvre().getDescriptionOeuvre()%></td>
                        <td><%= p.getOeuvre().getPrixOeuvre()%></td>
                        <td><img src=<%=p.getOeuvre().getImgLink()%>></td>
                    </tr>
                    <%    }
                        }%>
                </tbody>
            </table>
            <h2 style="text-align: center;">Total: <%=total%></h2>
            <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
                <div class="w3-content" style="max-width:600px">
                    <form action="acheter" style="text-align: center;">
                        <div class="w3-section">
                            <label>Courriel</label>
                            <input class="w3-input w3-border" type="text" name="email" required>
                        </div>
                        <input type="hidden" name="total" value="<%=total%>" >
                        <button type="submit" class="w3-button w3-block w3-black w3-margin-bottom">Acheter</button>
                    </form>
                </div>
            </div>
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
    </script>
</html>
