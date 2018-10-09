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
    private Oeuvres oeuvre;
    private int quantite;

    public Panier() {
    }

    public Panier(Oeuvres oeuvre, int quantite) {
        this.oeuvre = oeuvre;
        this.quantite = quantite;
    }

    public Oeuvres getOeuvre() {
        return oeuvre;
    }

    public void setOeuvre(Oeuvres oeuvre) {
        this.oeuvre = oeuvre;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    @Override
    public String toString() {
        return "Panier{" + "oeuvre=" + oeuvre + ", quantite=" + quantite + "}";
    }
    
    
    
}
