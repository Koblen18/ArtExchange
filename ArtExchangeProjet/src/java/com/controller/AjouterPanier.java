/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.action.OeuvreAction;
import com.entities.Oeuvres;
import com.entities.Panier;
import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author usager
 */
public class AjouterPanier extends HttpServlet {

    ArrayList<Panier> paniers = new ArrayList<>();

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
        response.setContentType("text/html;charset=UTF-8");
        Oeuvres o = null;
        int idConvert = 0;
        String id = request.getParameter("idOeuvre");
        if (id != null) {
            idConvert = Integer.parseInt(id);
            o = OeuvreAction.afficherOeuvreParID(idConvert);
//            try (PrintWriter out = response.getWriter()) {
//                /* TODO output your page here. You may use following sample code. */
//                out.println(o);
//            }
        }
        HttpSession session = request.getSession(false);
        if (o != null) {
            int etat = 0;
            if (session.getAttribute("listOe") != null) {
                paniers = (ArrayList<Panier>) session.getAttribute("listOe");
                for (Panier panier : paniers) {
                    if (idConvert != 0) {
                        if (panier.getOeuvre().getId() == idConvert) {
                            panier.setQuantite(panier.getQuantite() + 1);
                            etat = 1;
                        }
                    }
                }
            }
            if (etat == 0) {
                paniers.add(new Panier(o, 1));
                session.setAttribute("listOe", paniers);
            }
        }
        request.getRequestDispatcher("accueil").forward(request, response);
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
