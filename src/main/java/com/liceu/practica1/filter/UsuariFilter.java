package com.liceu.practica1.filter;

import com.liceu.practica1.services.UsuariService;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(urlPatterns = {"/figures", "/figuresCreades"})
public class UsuariFilter extends HttpFilter {
    UsuariService usuariService = new UsuariService();

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpSession session = req.getSession();

        if (session.getAttribute("usuariID") == null) {
            session.setAttribute("usuariID", usuariService.nouUsuari().getUsuariID());
        }

        chain.doFilter(req, res);
    }
}
