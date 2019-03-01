/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Administrador.ResPositiva;

/**
 *
 * @author KnokinGm
 */
public class GSRespositiva {
    private String fot;
    private int cod;
    private String ced;
    private String men;
    private String doc;

    public GSRespositiva(String fot, int cod, String ced, String men, String doc) {
        this.fot = fot;
        this.cod = cod;
        this.ced = ced;
        this.men = men;
        this.doc = doc;
    }

    public GSRespositiva() {
    }

    public GSRespositiva(String fot, String ced, String men, String doc) {
        this.fot = fot;
        this.ced = ced;
        this.men = men;
        this.doc = doc;
    }

    public String getFot() {
        return fot;
    }

    public void setFot(String fot) {
        this.fot = fot;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getCed() {
        return ced;
    }

    public void setCed(String ced) {
        this.ced = ced;
    }

    public String getMen() {
        return men;
    }

    public void setMen(String men) {
        this.men = men;
    }

    public String getDoc() {
        return doc;
    }

    public void setDoc(String doc) {
        this.doc = doc;
    }

   

  
}
