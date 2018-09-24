/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.util;


import com.controller.AfficherEtudiant;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Salahudine
 */
public class Helper {
//calculer l'age
    private static DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());

    public static int calculateAge(String date) {

        int age = 0;
        try {
            Date date1 = dateFormat.parse(date);
        
            Calendar now = Calendar.getInstance();
            Calendar dob = Calendar.getInstance();
            dob.setTime(date1);
            if (dob.after(now)) {
                throw new IllegalArgumentException("Ne peut pas né dans le future");
            }
            int year1 = now.get(Calendar.YEAR);
            System.out.println("Annee actuel : " + year1);
            int year2 = dob.get(Calendar.YEAR);
            System.out.println("Année saisie : " + year2);
            age = year1 - year2;
            System.out.println("Age : " + age);
            int month1 = now.get(Calendar.MONTH);
            System.out.println("Mois actual : " + month1);
            int month2 = dob.get(Calendar.MONTH);
            System.out.println("Mois saisi : " + month2);
            if (month2 > month1) {
                age--;
            } else if (month1 == month2) {
                int day1 = now.get(Calendar.DAY_OF_MONTH);
                System.out.println("Jour actuel : " + date1);
                int day2 = dob.get(Calendar.DAY_OF_MONTH);
                System.out.println("Jour saisie : " + day2);
                if (day2 > day1) {
                    age--;
                }
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return age;
    }
//Genere un mot de passe cryptee
    private static MessageDigest md;

    public static String cryptWithMD5(String pass) {
        try {
            md = MessageDigest.getInstance("MD5");
            byte[] passBytes = pass.getBytes();
            md.reset();
            byte[] digested = md.digest(passBytes);
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < digested.length; i++) {
                sb.append(Integer.toHexString(0xff & digested[i]));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(AfficherEtudiant.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }
}
