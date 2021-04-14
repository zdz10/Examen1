package com.prac4.modelo;

public class Producto {

    private int id;
    private String nombre;
    private int peso;
    private float talla;
    private String vacuna;

    public Producto() {
        this.id = 0;
        this.nombre = "";
        this.peso = 0;
        this.talla = 0;
        this.vacuna = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public float getTalla() {
        return talla;
    }

    public void setTalla(float talla) {
        this.talla = talla;
    }
    
    public String getVacuna() {
        return vacuna;
    }

    public void setVacuna(String vacuna) {
        this.vacuna = vacuna;
    }
}
