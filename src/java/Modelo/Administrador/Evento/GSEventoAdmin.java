package Modelo.Administrador.Evento;

public class GSEventoAdmin {
    
    private int cod;
    private String fec;
    private String lug;
    private String dura;
    private String desc;
    private String foto;

    public GSEventoAdmin(int cod, String fec, String lug, String dura, String desc, String foto) {
        this.cod = cod;
        this.fec = fec;
        this.lug = lug;
        this.dura = dura;
        this.desc = desc;
        this.foto = foto;
    }

    public GSEventoAdmin(String fec, String lug, String dura, String desc, String foto) {
        this.fec = fec;
        this.lug = lug;
        this.dura = dura;
        this.desc = desc;
        this.foto = foto;
    }

    public GSEventoAdmin() {
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

    public String getLug() {
        return lug;
    }

    public void setLug(String lug) {
        this.lug = lug;
    }

    public String getDura() {
        return dura;
    }

    public void setDura(String dura) {
        this.dura = dura;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
    
    
}
