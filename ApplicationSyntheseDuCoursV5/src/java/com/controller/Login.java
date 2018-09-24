/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.action.RemplirEtudiant;
import com.entities.Etudiant;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Salahudine
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");
		boolean connexion = false;
		PrintWriter out =  response.getWriter();
		String nom = request.getParameter("nom");
		System.out.println("nomsaisi " + nom);
		String password = request.getParameter("password");
		String sauvegarde = request.getParameter("sauvegarde");
                if (RemplirEtudiant.listEtudiant!=null) {
                    for (Etudiant etud : RemplirEtudiant.listEtudiant) {
			if (etud!=null) {
				if (nom.equals(etud.getNom()) && password.equals(etud.getPassword()) ) {
					connexion = true;
					HttpSession session = request.getSession(true);
					session.setAttribute("nom", nom);
					
					if(sauvegarde != null){
						if (sauvegarde.equals("yes")) {
							Cookie monCookie = new Cookie("nom", nom);
							Cookie passwordCookie = new Cookie("password", password);
							passwordCookie.setMaxAge(60 * 60);
							monCookie.setMaxAge(60 * 60);
							response.addCookie(monCookie);
							response.addCookie(passwordCookie);
						}
					}
					request.getRequestDispatcher("homePage.jsp").forward(request, response);
					
				} 
			}
		}
            
        } else {
                    out.println("La liste des étudiants est vide,cliquez d'abord sur menu etudiants pour remplir la liste");
        }
		
		if (!connexion) {
			 out.println("<center><b><font color=red>" + "Le nom d'utilisateur ou mot de passe invalide" + "</font><b></center>");
			  request.getRequestDispatcher("login.jsp").include(request, response);
			 //out.println("<b><font color=red>" + "Le nom d'utilisateur ou mot de passe invalide" + "</font><b>");
		}
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
