package Modelo.Administrador.Comentarios;

public class GSComentarios {

private int cod;
private String fec;
private String cue;
private int ado;

    public GSComentarios(int cod, String fec, String cue, int ado) {
        this.cod = cod;
        this.fec = fec;
        this.cue = cue;
        this.ado = ado;
    }

    public GSComentarios(String fec, String cue, int ado) {
        this.fec = fec;
        this.cue = cue;
        this.ado = ado;
    }

    public GSComentarios() {
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

    public String getCue() {
        return cue;
    }

    public void setCue(String cue) {
        this.cue = cue;
    }

    public int getAdo() {
        return ado;
    }

    public void setAdo(int ado) {
        this.ado = ado;
    }

    
}
