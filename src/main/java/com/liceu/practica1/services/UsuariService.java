package com.liceu.practica1.services;

import com.liceu.practica1.DAO.UsuariDAOImpl;
import com.liceu.practica1.model.Usuari;

public class UsuariService {
    public Usuari nouUsuari() {
        UsuariDAOImpl usuariDAOImpl = new UsuariDAOImpl();
        return usuariDAOImpl.crearUsuari();
    }
}
