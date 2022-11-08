package com.liceu.practica1.controllers;

import com.liceu.practica1.services.FiguraService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/lesTevesFigures")
public class FiguresPerUsuari extends HttpServlet {
    FiguraService figuraService = new FiguraService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        int usuariID = (int) (session.getAttribute("usuariID"));
        req.setAttribute("figureList", figuraService.retornarLlistaPerIDUsuari(usuariID));
        System.out.println(figuraService.retornarLlista());
        System.out.println(req.getParameter("figureList"));
        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/WEB-INF/jsp/figuresCreades.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("figureList", figuraService.retornarLlista());
        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/WEB-INF/jsp/figuresCreades.jsp");
        dispatcher.forward(req, resp);
    }
}
