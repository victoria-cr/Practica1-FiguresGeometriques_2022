package com.liceu.practica1.DAO;

import com.liceu.practica1.model.Message;

import java.util.List;

public interface MessageDAO {
    void save(Message m);

    List<Message> getAllMessages();
}
