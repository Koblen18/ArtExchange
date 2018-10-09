<%@page import="java.util.Iterator"%>
<%@page import ="com.entities.Oeuvres" %>
<%@page import ="java.util.ArrayList" %>
<%@page import ="com.controller.Accueil" %>  






<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

    <!-- Push down content on small screens --> 
    <div class="w3-hide-large" style="margin-top:83px"></div>

    <!-- Photo grid -->
    <div class="w3-row">
        <%
            ArrayList<Oeuvres> listOeuvre = (ArrayList) request.getAttribute(Accueil.CLE_DONNEE);
            if (listOeuvre != null) {
                Iterator<Oeuvres> oeuv = listOeuvre.iterator();
                for (int i = 0; i < listOeuvre.size() / 3; i++) {
                    int j = 0;

        %>
        <div class="w3-third">
            <%                while (oeuv.hasNext() && (j != 3)) {
                    j++;
                    Oeuvres o1 = oeuv.next();
            %>
            <img src="<%=o1.getImgLink()%>" style="width:100%" onclick="onClick(this)" alt="<%=o1.getDescriptionOeuvre()%> prix:<%=o1.getPrixOeuvre()%>$" data-oeuvre-id="<%=o1.getId()%>">
            <% }%>
        </div>
        <%
                }
            }
        %>

        <!--<div class="w3-third">
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
    </div>-->


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
            <a id="link">Ajouter au panier</a>
        </div>
    </div>
</div>
<!-- Contact section -->


