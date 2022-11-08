package com.liceu.practica1.DAO;

import com.liceu.practica1.model.Figura;

import java.util.ArrayList;
import java.util.List;

public class FiguraDAOImpl implements FiguraDAO {
    static List<Figura> figuresCreades = new ArrayList<>();

    public void guardarFigura(Figura figura) {
        figuresCreades.add(figura);
        System.out.println(figuresCreades);
    }

    public List<Figura> getFiguresCreades() {
        return figuresCreades;
    }

    public Object llistaPerUsuari(int usuariID) {
        List<Figura> figuresIDUsuari = new ArrayList<>();
        for (Figura figura : figuresCreades) {
            if (figura.getUsuariID() == usuariID) {
                figuresIDUsuari.add(figura);
            }
        }
        return figuresIDUsuari;
    }

    // 1. hola
    // 2. adios
}
