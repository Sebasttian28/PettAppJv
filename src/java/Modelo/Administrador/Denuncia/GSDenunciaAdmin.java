package Modelo.Administrador.Denuncia;

public class GSDenunciaAdmin {

    private int cod;
    private String fec;
    private String des;
    private String ced;
    private String men;
    private String fot;

    public GSDenunciaAdmin(int cod, String fec, String des, String ced, String men, String fot) {
        this.cod = cod;
        this.fec = fec;
        this.des = des;
        this.ced = ced;
        this.men = men;
        this.fot = fot;
    }

    public GSDenunciaAdmin(String fec, String des, String ced, String men, String fot) {
        this.fec = fec;
        this.des = des;
        this.ced = ced;
        this.men = men;
        this.fot = fot;
    }

    public GSDenunciaAdmin() {
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getFec() {
        return fec;
    }

    public void setFec(String fec) {
        this.fec = fec;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
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

    public String getFot() {
        return fot;
    }

    public void setFot(String fot) {
        this.fot = fot;
    }
    
}
