package Modelo.Administrador.Mascota;

public class GSMascotaAdmin {
    
    private int cod;
    private String nom;
    private String des;
    private String est;
    private String tip;
    private String eda;
    private String raz;
    private String ced;
    private String fot;

    public GSMascotaAdmin(int cod, String nom, String des, String est, String tip, String eda, String raz, String ced, String fot) {
        this.cod = cod;
        this.nom = nom;
        this.des = des;
        this.est = est;
        this.tip = tip;
        this.eda = eda;
        this.raz = raz;
        this.ced = ced;
        this.fot = fot;
    }

    public GSMascotaAdmin(String nom, String des, String est, String tip, String eda, String raz, String ced, String fot) {
        this.nom = nom;
        this.des = des;
        this.est = est;
        this.tip = tip;
        this.eda = eda;
        this.raz = raz;
        this.ced = ced;
        this.fot = fot;
    }

    public GSMascotaAdmin(int cod) {
        this.cod = cod;
    }

    public GSMascotaAdmin() {
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

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getEst() {
        return est;
    }

    public void setEst(String est) {
        this.est = est;
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

    public String getCed() {
        return ced;
    }

    public void setCed(String ced) {
        this.ced = ced;
    }

    public String getFot() {
        return fot;
    }

    public void setFot(String fot) {
        this.fot = fot;
    }
    
}
