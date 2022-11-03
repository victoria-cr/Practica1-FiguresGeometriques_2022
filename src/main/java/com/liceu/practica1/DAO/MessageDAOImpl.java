package com.liceu.practica1.DAO;

import com.liceu.practica1.model.Message;

import java.util.ArrayList;
import java.util.List;

public class MessageDAOImpl implements MessageDAO {
    static List<Message> messageList = new ArrayList<>();
    static int currentId = 0;

    @Override
    public synchronized void save(Message m) {
        m.setId(currentId);
        messageList.add(m);
        currentId++;
    }

    @Override
    public List<Message> getAllMessages()  {
        return messageList;
    }
}
