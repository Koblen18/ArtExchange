<%@page import ="com.entities.Oeuvres" %>
<%@page import ="java.util.ArrayList" %>
<%@page import ="com.controller.Accueil" %>  

<body>
    <!-- <h1>Hello World!</h1>
    
    <table>
        <tr>
            <th>Id</th>
            <th>Image</th>
            <th>Taille</th>
            <th>Nom</th>
            <th>Prix</th>
        </tr>
    <%
        ArrayList<Oeuvres> listOeuvre = (ArrayList) request.getAttribute(Accueil.CLE_DONNEE);
        if (listOeuvre != null) {
            for (Oeuvres oeuvre : listOeuvre) {%>
            <tr>
                <td><%=oeuvre.getId()%></td>
                <td><%=oeuvre.getImgLink()%></td>
                <td><%=oeuvre.getImgSize()%></td>
                <td><%=oeuvre.getNomOeuvre()%></td>
                <td><%=oeuvre.getPrixOeuvre()%></td>
            </tr>
    <%
            }

        }

    %>
        </table> -->


    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left:300px">

        <!-- Push down content on small screens --> 
        <div class="w3-hide-large" style="margin-top:83px"></div>

        <!-- Photo grid -->
        <div class="w3-row">
            <div class="w3-third">
                <img src="imagesSite/IMG_4992.PNG" style="width:100%" onclick="onClick(this)" alt="A boy surrounded by beautiful nature">
                <img src="imagesSite/IMG_4634.PNG" style="width:100%" onclick="onClick(this)" alt="What a beautiful scenery this sunset">
                <img src="imagesSite/IMG_4636.PNG" style="width:100%" onclick="onClick(this)" alt="The Beach. Me. Alone. Beautiful">
            </div>

            <div class="w3-third">
                <img src="imagesSite/IMG_4637.PNG" style="width:100%" onclick="onClick(this)" alt="Quiet day at the beach. Cold, but beautiful">
                <img src="imagesSite/IMG_4639.PNG" style="width:100%" onclick="onClick(this)" alt="Waiting for the bus in the desert">
                <img src="imagesSite/IMG_4642.PNG" style="width:100%" onclick="onClick(this)" alt="Nature again.. At its finest!">
                <img src="imagesSite/IMG_4989.JPG" style="width:100%" onclick="onClick(this)" alt="Nature again.. At its finest!">
            </div>

            <div class="w3-third">
                <img src="imagesSite/IMG_4643.PNG" style="width:100%" onclick="onClick(this)" alt="Canoeing again">
                <img src="imagesSite/IMG_4646.PNG" style="width:100%" onclick="onClick(this)" alt="A girl, and a train passing">
                <img src="imagesSite/IMG_4647.PNG" style="width:100%" onclick="onClick(this)" alt="What a beautiful day!">
                <img src="imagesSite/IMG_4993.PNG" style="width:100%" onclick="onClick(this)" alt="What a beautiful day!">
            </div>
        </div>


        <!-- Pagination -->
        <div class="w3-center w3-padding-32">
            <div class="w3-bar">
                <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
                <a href="#" class="w3-bar-item w3-black w3-button">1</a>
                <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
                <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
                <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
                <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
            </div>
        </div>

        <!-- Modal for full size images on click-->
        <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display = 'none'">
            <span class="w3-button w3-black w3-xlarge w3-display-topright">×</span>
            <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
                <img id="img01" class="w3-image">
                <p id="caption"></p>
            </div>
        </div>

        <!-- Contact section -->
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
                </form>
            </div>
        </div>


</body>
