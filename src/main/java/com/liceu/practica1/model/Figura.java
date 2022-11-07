package com.liceu.practica1.model;

public class Figura {
    int figuraID;
    String figura;
    String coordenadaX;
    String coordenadaY;
    String tamany;
    String nom;
    String color;

    public Figura(String figura, String coordenadaX, String coordenadaY, String tamany, String nom, String color) {
        this.figura = figura;
        this.coordenadaX = coordenadaX;
        this.coordenadaY = coordenadaY;
        this.tamany = tamany;
        this.nom = nom;
        this.color = color;
    }

    public int getFiguraID() {
        return figuraID;
    }

    public void setFiguraID(int figuraID) {
        this.figuraID = figuraID;
    }

    public String getFigura() {
        return figura;
    }

    public void setFigura(String figura) {
        this.figura = figura;
    }

    public String getCoordenadaX() {
        return coordenadaX;
    }

    public void setCoordenadaX(String coordenadaX) {
        this.coordenadaX = coordenadaX;
    }

    public String getCoordenadaY() {
        return coordenadaY;
    }

    public void setCoordenadaY(String coordenadaY) {
        this.coordenadaY = coordenadaY;
    }

    public String getTamany() {
        return tamany;
    }

    public void setTamany(String tamany) {
        this.tamany = tamany;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return "Figura{" +
                "figura='" + figura + '\'' +
                ", coordenadaX='" + coordenadaX + '\'' +
                ", coordenadaY='" + coordenadaY + '\'' +
                ", tamany='" + tamany + '\'' +
                ", nom='" + nom + '\'' +
                ", color='" + color + '\'' +
                '}';
    }
}
