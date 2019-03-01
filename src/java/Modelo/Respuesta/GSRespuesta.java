package Modelo.Respuesta;

public class GSRespuesta {
   private String fot;
   private int cod;
   private String ced;
   private String men;
   private String enc;

    public GSRespuesta(String fot, int cod, String ced, String men, String enc) {
        this.fot = fot;
        this.cod = cod;
        this.ced = ced;
        this.men = men;
        this.enc = enc;
    }

    public GSRespuesta() {
    }
    

    public GSRespuesta(String fot, String ced, String men, String enc) {
        this.fot = fot;
        this.ced = ced;
        this.men = men;
        this.enc = enc;
    }

    public GSRespuesta(String ced, String men, String enc) {
        this.ced = ced;
        this.men = men;
        this.enc = enc;
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

    public String getEnc() {
        return enc;
    }

    public void setEnc(String enc) {
        this.enc = enc;
    }

   
    
   
}
