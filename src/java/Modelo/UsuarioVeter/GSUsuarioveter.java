/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.UsuarioVeter;

/**
 *
 * @author KnokinGm
 */
public class GSUsuarioveter {
      private String nom;
    private String cla;
    private int rol;
    private String fot;

    public GSUsuarioveter(String nom, String cla, int rol, String fot) {
        this.nom = nom;
        this.cla = cla;
        this.rol = rol;
        this.fot = fot;
    }

    public GSUsuarioveter() {
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getCla() {
        return cla;
    }

    public void setCla(String cla) {
        this.cla = cla;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }

    public String getFot() {
        return fot;
    }

    public void setFot(String fot) {
        this.fot = fot;
    }

    
}
