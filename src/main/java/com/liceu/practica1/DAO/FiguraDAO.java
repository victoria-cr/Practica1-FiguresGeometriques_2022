package com.liceu.practica1.DAO;

import com.liceu.practica1.model.Figura;

import java.util.List;

public interface FiguraDAO {
    void guardarFigura(Figura figura);

    List<Figura> getFiguresCreades();

    Object llistaPerUsuari(int usuariID);

    Figura llistaPerFigura(int figuraID);

    void esborrarFigura(int IDFigura);
}
