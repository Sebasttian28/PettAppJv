package Modelo.Administrador.Adopcion;


public class GSAdopcion {

    private String icon;
    private int codap;
    private int ani;
    private String ced;
    private String doc;
    private String men;

    public GSAdopcion(String icon, int codap, int ani, String ced, String doc, String men) {
        this.icon = icon;
        this.codap = codap;
        this.ani = ani;
        this.ced = ced;
        this.doc = doc;
        this.men = men;
    }

    public GSAdopcion(String icon, int ani, String ced, String doc, String men) {
        this.icon = icon;
        this.ani = ani;
        this.ced = ced;
        this.doc = doc;
        this.men = men;
    }

    public GSAdopcion() {
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public int getCodap() {
        return codap;
    }

    public void setCodap(int codap) {
        this.codap = codap;
    }

    public int getAni() {
        return ani;
    }

    public void setAni(int ani) {
        this.ani = ani;
    }

    public String getCed() {
        return ced;
    }

    public void setCed(String ced) {
        this.ced = ced;
    }

    public String getDoc() {
        return doc;
    }

    public void setDoc(String doc) {
        this.doc = doc;
    }

    public String getMen() {
        return men;
    }

    public void setMen(String men) {
        this.men = men;
    }

    
}
