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
}
