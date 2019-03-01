/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Login;

/**
 *
 * @author KnokinGm
 */
public class GSLogin {
      
    public String usu;
    public String cla;
    public int rol;

    public GSLogin(String usu, String cla, int rol) {
        this.usu = usu;
        this.cla = cla;
        this.rol = rol;
    }

    public GSLogin(String usu, String cla) {
        this.usu = usu;
        this.cla = cla;
    }

    public GSLogin(int rol) {
        this.rol = rol;
    }

    public String getUsu() {
        return usu;
    }

    public void setUsu(String usu) {
        this.usu = usu;
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
