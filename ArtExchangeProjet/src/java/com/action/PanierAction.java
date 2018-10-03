/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.entities.Panier;
import com.manager.PanierManager;
import java.util.ArrayList;


/**
 *
 * @author usager
 */
public class PanierAction {
    
    
    public static ArrayList<Panier> afficherPanierParId(int oeuvToAdd) {
        ArrayList<Panier> listPanier = PanierManager.getAllByCompteId(oeuvToAdd);
        return listPanier;
    }
    
    public static boolean ajouterPanier(Panier oeuvToAdd) {
        boolean retour = false;
        if (PanierManager.insert(oeuvToAdd)) {
            retour=true;
        }
        return retour;
    }
    public static boolean supprimerOeuvrePanier(int idCompte, int idOeuvre) {
        boolean retour = false;
        if (PanierManager.delete(idCompte,idOeuvre)) {
            retour=true;
        }
        return retour;
    }
    public static boolean supprimerPanier(int idCompte) {
        boolean retour = false;
        if (PanierManager.deleteAll(idCompte)) {
            retour=true;
        }
        return retour;
    }
}
