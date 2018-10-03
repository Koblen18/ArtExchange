<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-animate-left w3-text-grey w3-collapse w3-top w3-center" style="z-index:3;width:300px;font-weight:bold" id="mySidebar"><br>
  <h2 class="w3-padding-64 w3-center"><b>Art <br> Exchange</b></h2>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-hide-large">CLOSE</a>
  <a href="accueil.jsp" onclick="w3_close()" class="w3-bar-item w3-button">ACCUEIL</a> 
  <a href="login.jsp" onclick="w3_close()" class="w3-bar-item w3-button">LOGIN</a> 
  <a href="logout" onclick="w3_close()" class="w3-bar-item w3-button">LOGOUT</a>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-white w3-xlarge w3-padding-16">
  <span class="w3-left w3-padding">Art Exchange</span>
  <a href="javascript:void(0)" class="w3-right w3-button w3-white" onclick="w3_open()"> ? </a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
