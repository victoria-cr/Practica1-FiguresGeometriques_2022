package com.liceu.practica1.controllers;

import com.liceu.practica1.model.Figura;
import com.liceu.practica1.model.Usuari;
import com.liceu.practica1.services.FiguraService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/figures")
public class Figures extends HttpServlet {
    FiguraService figuraService = new FiguraService();
    Usuari usuari = new Usuari();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        System.out.println((int) (session.getAttribute("usuariID")));
        usuari.setUsuariID((int) (session.getAttribute("usuariID")));

        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/WEB-INF/jsp/figures.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String figura = req.getParameter("figura");
        String coordenadaX = req.getParameter("coordenadaX");
        String coordenadaY = req.getParameter("coordenadaY");
        String tamany = req.getParameter("tamany");
        String nom = req.getParameter("nom");
        String color = req.getParameter("color");

        HttpSession session = req.getSession();
        usuari.setUsuariID((int) session.getAttribute("usuariID"));

        Figura figura1 = new Figura(figura,coordenadaX,coordenadaY,tamany,nom,color,usuari.getUsuariID());
        System.out.println(figura1);
        figuraService.crearFigura(figura1);

        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/WEB-INF/jsp/figures.jsp");
        dispatcher.forward(req, resp);
    }
}
