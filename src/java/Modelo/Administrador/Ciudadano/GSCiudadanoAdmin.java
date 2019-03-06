package Modelo.Administrador.Ciudadano;

public class GSCiudadanoAdmin {
   private String ced;
   private String nom;
   private String tel;
   private String dir;
   private String cor;
   private String usu;

    public GSCiudadanoAdmin(String ced, String nom, String tel, String dir, String cor, String usu) {
        this.ced = ced;
        this.nom = nom;
        this.tel = tel;
        this.dir = dir;
        this.cor = cor;
        this.usu = usu;
    }
    
    public GSCiudadanoAdmin(String ced) {
        this.ced = ced;
    }

    public GSCiudadanoAdmin() {
    }

    public String getCed() {
        return ced;
    }

    public void setCed(String ced) {
        this.ced = ced;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getUsu() {
        return usu;
    }

    public void setUsu(String usu) {
        this.usu = usu;
    }
   
   
}
