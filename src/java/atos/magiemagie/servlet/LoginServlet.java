/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.magiemagie.servlet;

import atos.magiemagie.dao.PartieDAO;
import atos.magiemagie.entity.Joueur;
import atos.magiemagie.entity.Partie;
import atos.magiemagie.service.JoueurService;
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
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})

public class LoginServlet extends HttpServlet {
    private JoueurService joueurservice = new JoueurService();
    private PartieService joueurPartie = new  PartieService();
    private PartieDAO partiedao = new PartieDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        String pseudo = req.getParameter("pseudo");
        String avatar = req.getParameter("radio");
        
        Long idPartie = (Long) req.getSession().getAttribute("idPartie");
        System.out.println("doPost LoginServlet");
        //********************************************
        
        Joueur joueur = joueurservice.rejoindrePartie(pseudo, idPartie, avatar);
        req.getSession().setAttribute("moi", joueur);
        
        Partie p = partiedao.rechercherParID(idPartie);
        req.getSession().setAttribute("partie", p);
        
        // ?????????????????????  Tester avant si nbrJR > 2  ???????????????????
        resp.sendRedirect("ListeDesJoueursServlet");
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("idPartie");
        if(param == null){
            resp.sendRedirect("listePartieServlet");
        }
        Long idPartie = Long.parseLong(param);
        req.getSession().setAttribute("idPartie", idPartie);
        System.out.println("doGet LoginServlet");
        req.getRequestDispatcher("loginJoueur.jsp").forward(req, resp);
        
    }
    
}
