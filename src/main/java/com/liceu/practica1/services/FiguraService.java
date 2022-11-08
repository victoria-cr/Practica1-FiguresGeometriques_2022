package com.liceu.practica1.services;

import com.liceu.practica1.DAO.FiguraDAOImpl;
import com.liceu.practica1.model.Figura;

import java.util.List;

public class FiguraService {
    static int contadorID = 0;
    FiguraDAOImpl figuraDAOimpl = new FiguraDAOImpl();

    public void crearFigura(Figura figura) {
        figura.setFiguraID(contadorID);
        contadorID++;
        figuraDAOimpl.guardarFigura(figura);
    }

    public List<Figura> retornarLlista() {
        return figuraDAOimpl.getFiguresCreades();
    }

    public Object retornarLlistaPerIDUsuari(int usuariID) {
        return figuraDAOimpl.llistaPerUsuari(usuariID);
    }

    public Figura retornarPerIDFigura(int IDFigura) {
        for (Figura figura : retornarLlista()) {
            if (figura.getFiguraID() == IDFigura) {
                return figura;
            }
        }
        return null;
    }

    public void esborrarFigura(int IDFigura) {
        figuraDAOimpl.esborrarFigura(IDFigura);
    }
}
