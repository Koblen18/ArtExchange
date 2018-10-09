/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author usager
 */
public class selectAllTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String sql = "select * from oeuvre where idoeuvre=1";
		
		try {
			PreparedStatement ps= ConnexionBD.getConnection().prepareStatement(sql);
			       ResultSet  result =  ps.executeQuery();
                               //Optionnel : Renvoyer un booléen qui indique 
                               //si la position courante du curseur se trouve
                               //avant la première ligne
			       if (result.isBeforeFirst()) {
                                   //La méthode next() pour se déplacer sur le suivant
					 while (result.next()) {
						System.out.println(result.getString("nomOeuvre"));
					}
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		ConnexionBD.closeConnection();
    }
    
}
