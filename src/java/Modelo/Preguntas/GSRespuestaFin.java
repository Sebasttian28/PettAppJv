package Modelo.Preguntas;

public class GSRespuestaFin {

    private String ced;
    private int re1;

    public GSRespuestaFin(String ced, int re1) {
        this.ced = ced;
        this.re1 = re1;
    }

    public GSRespuestaFin(String ced) {
        this.ced = ced;
    }

    public GSRespuestaFin(int re1) {
        this.re1 = re1;
    }

    public GSRespuestaFin() {
    }

    public String getCed() {
        return ced;
    }

    public void setCed(String ced) {
        this.ced = ced;
    }

    public int getRe1() {
        return re1;
    }

    public void setRe1(int re1) {
        this.re1 = re1;
    }

    
}
