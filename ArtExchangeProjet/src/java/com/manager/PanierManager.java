/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manager;

import com.entities.Panier;
import com.service.ConnexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author usager
 */
public class PanierManager {
    private static final String QUERY_GET_BY_ID="select * from panier where idpanier=?";
    private static final String QUERY_INSERT_FAVORIS = "insert into panier(idCompte,idOeuvre) value(?,?)";
    private static final String QUERY_DELETE_FAVORIS = "delete from panier where idCompte = ? and idOeuvre = ?";
    private static final String QUERY_DELETE_ALL_FAVORIS = "delete from panier where idCompte = ?";
    
    public static ArrayList<Panier> getAllByCompteId(int id){
        ArrayList<Panier> retour = null;
        try {
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(QUERY_GET_BY_ID);
            ps.setInt(1, id);
            
            ResultSet result = ps.executeQuery();
            retour = new ArrayList<>();
            while (result.next()){
                Panier pan = new Panier();
                pan.setIdUtilisateur(result.getInt("idCompte"));
                pan.setIdoeuvre(result.getInt("idOeuvre"));
                
                retour.add(pan);
            }
        }catch(SQLException e){
            
        }
        ConnexionBD.closeConnection();
        return retour;
    }
    
    public static boolean insert(Panier pan){
        boolean retour = false;
        ResultSet idRetour = null;
        PreparedStatement ps;
        int nbLigne = 0;
        try {
            ps = ConnexionBD.getConnection().prepareStatement(QUERY_INSERT_FAVORIS);
            ps.setInt(1, pan.getIdUtilisateur());
            ps.setInt(2, pan.getIdoeuvre());
            
            nbLigne = ps.executeUpdate();
            idRetour = ps.getGeneratedKeys();
            idRetour.next();
            
        } catch (SQLException e) {
        }
        
        if(nbLigne>0){
            retour = true;
        }
        
        ConnexionBD.closeConnection();
        return retour;
    }
    
    public static boolean delete(int idCompte, int idOeuvre){
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            ps = ConnexionBD.getConnection().prepareStatement(QUERY_DELETE_FAVORIS);
            ps.setInt(1, idCompte);
            ps.setInt(2, idOeuvre);

            nbLigne = ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        if (nbLigne > 0) {
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
    }
    
    public static boolean deleteAll(int idCompte){
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            ps = ConnexionBD.getConnection().prepareStatement(QUERY_DELETE_ALL_FAVORIS);
            ps.setInt(1, idCompte);

            nbLigne = ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        if (nbLigne > 0) {
            System.out.println(nbLigne+" lignes effacees");
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
    }
}
