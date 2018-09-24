/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entities;

import java.io.Serializable;

/**
 *
 * @author Salahudine
 */
public class Etudiant implements Serializable{
    private int id;
    private String imgLink;
    private String nom;
    private String prenom;
    private int age;
    private String email;
    private String password;

    public Etudiant(int id, String imgLink, String nom, String prenom, int age, String email, String password) {
        this.id = id;
        this.imgLink = imgLink;
        this.nom = nom;
        this.prenom = prenom;
        this.age = age;
        this.email = email;
        this.password = password;
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

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Etudiant{" + "id=" + id + ", imgLink=" + imgLink + ", nom=" + nom + ", prenom=" + prenom + ", age=" + age + ", email=" + email + ", password=" + password + '}';
    }
    
    
}
