/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.magiemagie.servlet;

import atos.magiemagie.entity.Joueur;
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
    private PartieService partieService = new  PartieService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            Long idPartie = (Long) req.getSession().getAttribute("idPartie");
            partieService.demarrerPartie(idPartie);
            req.getRequestDispatcher("jouer-Partie.jsp").forward(req, resp);
    }
        
}
