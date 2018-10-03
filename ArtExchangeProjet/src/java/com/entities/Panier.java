/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entities;

/**
 *
 * @author usager
 */
public class Panier {
    private int idUtilisateur;
    private int idoeuvre;

    public Panier() {
    }

    public Panier(int idUtilisateur, int idoeuvre) {
        this.idUtilisateur = idUtilisateur;
        this.idoeuvre = idoeuvre;
    }

    public int getIdUtilisateur() {
        return idUtilisateur;
    }

    public void setIdUtilisateur(int idUtilisateur) {
        this.idUtilisateur = idUtilisateur;
    }

    public int getIdoeuvre() {
        return idoeuvre;
    }

    public void setIdoeuvre(int idoeuvre) {
        this.idoeuvre = idoeuvre;
    }

    
    
}
