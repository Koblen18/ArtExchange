/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;


import com.entities.Oeuvres;
import com.manager.OeuvreManager;
import java.util.ArrayList;

/**
 *
 * @author usager
 */
public class OeuvreAction {
    public static ArrayList<Oeuvres> afficherOeuvre(){
        ArrayList<Oeuvres> listOeuvre = OeuvreManager.getAll();
        return listOeuvre;
    }
    
    public static Oeuvres afficherOeuvreParID(int id){
        Oeuvres oeuv = OeuvreManager.getById(id);
        return oeuv;
    }
}
