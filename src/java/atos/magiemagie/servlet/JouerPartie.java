/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.magiemagie.servlet;

import atos.magiemagie.dao.PartieDAO;
import atos.magiemagie.entity.Joueur;
import atos.magiemagie.entity.Partie;
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
@WebServlet(name = "JouerPartie", urlPatterns = {"/JouerPartie"})
public class JouerPartie extends HttpServlet {

    private PartieService partieService = new PartieService();
    private PartieDAO partiedao = new PartieDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Object obj = req.getSession().getAttribute("partie");
        if (obj == null) {
            resp.sendRedirect("listePartieServlet");
        } else {
            Partie partie = (Partie) obj;
            partie = partiedao.rechercherParID(partie.getId());
            
            // lancer la partie si il ya une action  demarrerPartie
            String demarrerPartie = req.getParameter("demarrerPartie");
            if (demarrerPartie != null && demarrerPartie.equals("true") &&!partie.isPartieDemarre() ) {
                partieService.demarrerPartie(partie.getId());
                partie = partiedao.rechercherParID(partie.getId());
            }
            
            req.getSession().setAttribute("partie", partie);
            obj = req.getSession().getAttribute("moi");
            Joueur moi = (Joueur) obj;
            for (Joueur jr : partie.getJoueurs()) {
                if (jr.getId().equals(moi.getId())) {
                    moi = jr;
                    break;
                }
            }

            req.getSession().setAttribute("moi", moi);
            req.getRequestDispatcher("jouer-Partie.jsp").forward(req, resp);
        }
    }

}
