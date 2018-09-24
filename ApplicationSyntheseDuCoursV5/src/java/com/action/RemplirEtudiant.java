/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.entities.Etudiant;
import java.util.ArrayList;

/**
 *
 * @author Salahudine
 */
public class RemplirEtudiant {
    public static ArrayList<Etudiant> listEtudiant;
    public static void addListEtudiant(int id, String imgLink, String nom, String prenom, int age, String email, String password){
      if(listEtudiant==null)
          listEtudiant = new ArrayList<Etudiant>();
          listEtudiant.add( new Etudiant(id, imgLink, nom, prenom, age, email, password));
    }
}
