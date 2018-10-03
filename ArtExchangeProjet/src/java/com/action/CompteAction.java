/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.entities.Compte;
import com.manager.CompteManager;
import java.util.ArrayList;

/**
 *
 * @author usager
 */
public class CompteAction {
    public static ArrayList<Compte> afficherEtudiant(){
        ArrayList<Compte> listCompte = CompteManager.getAll();
        return listCompte;
    }
}
