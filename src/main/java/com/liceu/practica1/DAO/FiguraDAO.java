package com.liceu.practica1.DAO;

import com.liceu.practica1.model.Figura;

public interface FiguraDAO {
    void guardarFigura(Figura figura);

    Object llistaPerUsuari(int usuariID);
    
    void esborrarFigura(int IDFigura);
}
