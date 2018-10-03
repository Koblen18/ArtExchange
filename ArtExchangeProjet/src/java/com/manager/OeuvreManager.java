/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manager;

import com.entities.Oeuvres;
import com.service.ConnexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author usager
 */
public class OeuvreManager {

    private static String queuryGetAllOeuvre = "select * from oeuvre";
    public static ArrayList<Oeuvres> getAll() {
        ArrayList<Oeuvres> retour = null;
        try {
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(queuryGetAllOeuvre);
            ResultSet result = ps.executeQuery();
            retour = new ArrayList<>();
            while(result.next()){
                Oeuvres oeu = new Oeuvres();
                oeu.setId(result.getInt("idOeuvre"));
                oeu.setImgLink(result.getString("imgLink"));
                oeu.setImgSize(result.getInt("imgSize"));
                oeu.setNomOeuvre(result.getString("nomOeuvre"));
                oeu.setPrixOeuvre(result.getDouble("prixOeuvre"));
                retour.add(oeu);
            }
        } catch(SQLException e){
            e.printStackTrace();
        }
        ConnexionBD.closeConnection();
        return retour;
    }
    
}
