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
        <title>Login Page</title>
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
            <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
                <div class="w3-content" style="max-width:600px">
                    <h3 class="w3-center"><b>Login</b></h3>
                    <p> </p>
                    <form action="login" target="_blank">
                        <div class="w3-section">
                            <label>Nom</label>
                            <input class="w3-input w3-border" type="text" name="nom" required>
                        </div>
                        <div class="w3-section">
                            <label>Mot de passe</label>
                            <input class="w3-input w3-border" type="text" name="password" required>
                        </div>
                        <button type="submit" class="w3-button w3-block w3-black w3-margin-bottom">Sign In</button>
                        <div class="w3-section">
                            <label>Remember me</label>
                            <input class="w3-input w3-border" type="checkbox" name="sauvegarde" value="yes">
                        </div>


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

// Modal Image Gallery
        function onClick(element) {
            document.getElementById("img01").src = element.src;
            document.getElementById("modal01").style.display = "block";
            var captionText = document.getElementById("caption");
            captionText.innerHTML = element.alt;
        }

    </script>
</html>
