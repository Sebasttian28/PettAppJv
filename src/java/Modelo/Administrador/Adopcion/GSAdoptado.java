/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Administrador.Adopcion;

/**
 *
 * @author KnokinGm
 */
public class GSAdoptado {
       private int cod;
    private String nom;
    private String tip;
    private String eda;
    private String raz;
    private String tam;
    private String gen;
    private String col;
    private String fot;

    public GSAdoptado(int cod, String nom, String tip, String eda, String raz, String tam, String gen, String col, String fot) {
        this.cod = cod;
        this.nom = nom;
        this.tip = tip;
        this.eda = eda;
        this.raz = raz;
        this.tam = tam;
        this.gen = gen;
        this.col = col;
        this.fot = fot;
    }

    public GSAdoptado(String nom, String tip, String eda, String raz, String tam, String gen, String col, String fot) {
        this.nom = nom;
        this.tip = tip;
        this.eda = eda;
        this.raz = raz;
        this.tam = tam;
        this.gen = gen;
        this.col = col;
        this.fot = fot;
    }

    public GSAdoptado(int cod, String nom, String tip, String eda, String raz, String tam, String gen, String col) {
        this.cod = cod;
        this.nom = nom;
        this.tip = tip;
        this.eda = eda;
        this.raz = raz;
        this.tam = tam;
        this.gen = gen;
        this.col = col;
    }

    public GSAdoptado() {
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }

    public String getEda() {
        return eda;
    }

    public void setEda(String eda) {
        this.eda = eda;
    }

    public String getRaz() {
        return raz;
    }

    public void setRaz(String raz) {
        this.raz = raz;
    }

    public String getTam() {
        return tam;
    }

    public void setTam(String tam) {
        this.tam = tam;
    }

    public String getGen() {
        return gen;
    }

    public void setGen(String gen) {
        this.gen = gen;
    }

    public String getCol() {
        return col;
    }

    public void setCol(String col) {
        this.col = col;
    }

    public String getFot() {
        return fot;
    }

    public void setFot(String fot) {
        this.fot = fot;
    }
    
    
}
