package com.liceu.practica1.controllers;

import com.liceu.practica1.model.Figura;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/figures")
public class Figures extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/WEB-INF/jsp/crearFigures.jsp");
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

        Figura figura1 = new Figura(figura,coordenadaX,coordenadaY,tamany,nom,color);
    }
}
