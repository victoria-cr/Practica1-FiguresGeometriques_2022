package com.liceu.practica1.DAO;

import com.liceu.practica1.model.Usuari;

public class UsuariDAOImpl implements UsuariDAO {
    static int contador = 0;

    public Usuari crearUsuari() {
        Usuari usuari = new Usuari();
        usuari.setUsuariID(contador);
        contador++;
        return usuari;
    }
}
