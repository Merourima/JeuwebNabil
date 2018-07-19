/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.magiemagie.servlet;

import atos.magiemagie.dao.PartieDAO;
import atos.magiemagie.entity.Partie;
import atos.magiemagie.service.PartieService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrateur
 */
@WebServlet(name = "ListeDesJoueursServlet", urlPatterns = {"/ListeDesJoueursServlet"})
    public class ListeDesJoueursServlet extends HttpServlet {
    private PartieService partieService = new  PartieService();
    private PartieDAO partiedao = new PartieDAO();
    

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Object obj = req.getSession().getAttribute("partie");
        if(obj == null){
            resp.sendRedirect("listePartieServlet");
        }else {
         Partie partie = (Partie) obj;
         partie = partiedao.rechercherParID(partie.getId());              
        req.getSession().setAttribute("partie", partie);
         if(partie.isPartieDemarre()){
             resp.sendRedirect("JouerPartie");
         }else {
             req.getRequestDispatcher("lister-joueur.jsp").forward(req, resp);
         }
        
        }
        
        
    }
}
