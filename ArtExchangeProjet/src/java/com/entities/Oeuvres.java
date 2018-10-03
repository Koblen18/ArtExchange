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
public class Oeuvres {
    private int id;
    private String imgLink;
    private int imgSize;
    private String nomOeuvre;
    private double prixOeuvre;

    public Oeuvres(int id, String imgLink, int imgSize, String nomOeuvre, double prixOeuvre) {
        this.id = id;
        this.imgLink = imgLink;
        this.imgSize = imgSize;
        this.nomOeuvre = nomOeuvre;
        this.prixOeuvre = prixOeuvre;
    }

    public Oeuvres() {
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImgLink() {
        return imgLink;
    }

    public void setImgLink(String imgLink) {
        this.imgLink = imgLink;
    }

    public int getImgSize() {
        return imgSize;
    }

    public void setImgSize(int imgSize) {
        this.imgSize = imgSize;
    }

    public String getNomOeuvre() {
        return nomOeuvre;
    }

    public void setNomOeuvre(String nomOeuvre) {
        this.nomOeuvre = nomOeuvre;
    }

    public double getPrixOeuvre() {
        return prixOeuvre;
    }

    public void setPrixOeuvre(double prixOeuvre) {
        this.prixOeuvre = prixOeuvre;
    }
    
}
