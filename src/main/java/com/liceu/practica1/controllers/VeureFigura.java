package com.liceu.practica1.controllers;

import com.liceu.practica1.services.FiguraService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/visualitzarFigura")
public class VeureFigura extends HttpServlet {
    FiguraService figuraService = new FiguraService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/WEB-INF/jsp/visualitzarFigura.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int IDfigura = Integer.parseInt(req.getParameter("figuraID"));
        req.setAttribute("figura", figuraService.retornarLlistaPerIDFigura(IDfigura).getFigura());
        req.setAttribute("x", figuraService.retornarLlistaPerIDFigura(IDfigura).getCoordenadaX());
        req.setAttribute("y", figuraService.retornarLlistaPerIDFigura(IDfigura).getCoordenadaY());
        req.setAttribute("tamany", figuraService.retornarLlistaPerIDFigura(IDfigura).getTamany());
        req.setAttribute("color", figuraService.retornarLlistaPerIDFigura(IDfigura).getColor());

        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/WEB-INF/jsp/visualitzarFigura.jsp");
        dispatcher.forward(req, resp);
    }
}
