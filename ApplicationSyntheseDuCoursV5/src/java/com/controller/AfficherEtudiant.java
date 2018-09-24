/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.action.RemplirEtudiant;
import com.entities.Etudiant;
import com.util.Helper;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Salahudine
 */
public class AfficherEtudiant extends HttpServlet {
  public static String CLE_DONNEE = "toto";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
    public void init()
            throws ServletException {
        RemplirEtudiant.addListEtudiant(1,"cat.jpg", "root", "rootPrenom", 14,"roo@gmail.com", "root");
        RemplirEtudiant.addListEtudiant(2,"dog.jpg", "rootDog", "rootPrenomDog", 14,"roo@gmail.com", "root");       
        RemplirEtudiant.addListEtudiant(3,"giraffe.jpg", "root", "rootPrenom", 14,"roo@gmail.com", "root");
               
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       int ageCalcule = 0 ;
         Etudiant nouveauEtudiant = null;
        String photo = request.getParameter("photo");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String age = request.getParameter("age");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if(photo!=null && nom!=null && prenom!=null && age!=null && email!=null && password!=null){
             ageCalcule = Helper.calculateAge(age);
              
               nouveauEtudiant = new Etudiant(4, photo, nom, prenom, ageCalcule, email, Helper.cryptWithMD5(password).substring(1, 8));
       // RemplirEtudiant.addListEtudiant(ageCalcule, email, nom, prenom, ageCalcule, email, Helper.cryptWithMD5(password).substring(1, 8));
        }
      
     
        
        
        if (RemplirEtudiant.listEtudiant!=null && nouveauEtudiant!=null) {
            RemplirEtudiant.listEtudiant.add(nouveauEtudiant);
       }
        request.setAttribute(CLE_DONNEE, RemplirEtudiant.listEtudiant);
        request.getRequestDispatcher("afficherEtudiant.jsp").forward(request, response);
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
