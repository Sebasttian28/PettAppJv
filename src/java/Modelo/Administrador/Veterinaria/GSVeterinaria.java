package Modelo.Administrador.Veterinaria;

public class GSVeterinaria {
    
    private String nit;
    private String tel;
    private String nom;
    private String dir;

    public GSVeterinaria(String nit, String tel, String nom, String dir) {
        this.nit = nit;
        this.tel = tel;
        this.nom = nom;
        this.dir = dir;
    }

    public GSVeterinaria() {
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    
}
