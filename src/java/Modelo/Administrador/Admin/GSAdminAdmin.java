/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Administrador.Admin;


public class GSAdminAdmin {
   private String nom;
private String cla;
private int rol;

    public GSAdminAdmin(String nom, String cla, int rol) {
        this.nom = nom;
        this.cla = cla;
        this.rol = rol;
    }

    public GSAdminAdmin(String nom, String cla) {
        this.nom = nom;
        this.cla = cla;
    }

    public GSAdminAdmin() {
    }

    public GSAdminAdmin(String nom) {
        this.nom = nom;
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

  


}
