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
import java.io.PrintWriter;
import java.util.List;
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
        
        //********************************************
        
        joueurservice.rejoindrePartie(pseudo, idPartie, avatar);
        Partie p = partiedao.rechercherParID(idPartie);
        List<Joueur> jrDeLaPartie = p.getJoueurs();
        req.getSession().setAttribute("listeDesJoueurDePartie", jrDeLaPartie);
        
        // ?????????????????????  Tester avant si nbrJR > 2  ???????????????????
        resp.sendRedirect("lister-joueur.jsp");
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Long idPartie = Long.parseLong(req.getParameter("idPartie"));
        req.getSession().setAttribute("idPartie", idPartie);
        req.getRequestDispatcher("loginJoueur.jsp").forward(req, resp);
        
    }
    
}
