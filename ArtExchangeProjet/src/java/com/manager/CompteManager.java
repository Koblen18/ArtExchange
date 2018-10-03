/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manager;

import com.entities.Compte;
import com.service.ConnexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author usager
 */
public class CompteManager {
    private static String queuryGetAllCompte = "select * from compte";
    
    public static ArrayList<Compte> getAll(){
        ArrayList<Compte> retour = null;
        try {
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(queuryGetAllCompte);
            ResultSet result = ps.executeQuery();
            retour = new ArrayList<>();
            while(result.next()){
                Compte com = new Compte();
                com.setId(result.getInt("idCompte"));
                com.setUsername(result.getString("usernameCompte"));
                com.setPassword(result.getString("passwordCompte"));
                retour.add(com);
            }
        } catch(SQLException e){
            e.printStackTrace();
        }
        ConnexionBD.closeConnection();
        return retour;
    }
    
}
