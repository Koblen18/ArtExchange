 <%@page import ="com.entities.Oeuvres" %>
 <%@page import ="java.util.ArrayList" %>
 <%@page import ="com.controller.Accueil" %>  

<body>
    <h1>Hello World!</h1>
    
    <table>
        <tr>
            <th>Id</th>
            <th>Image</th>
            <th>Taille</th>
            <th>Nom</th>
            <th>Prix</th>
        </tr>
<%
    ArrayList<Oeuvres> listOeuvre = (ArrayList)request.getAttribute(Accueil.CLE_DONNEE);
    if (listOeuvre!=null) {
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
    </table>
</body>
