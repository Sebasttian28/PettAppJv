package Modelo.Administrador.Animal;

public class GSAnimalAdmin {

    private int cod;
    private String nom;
    private String tip;
    private String eda;
    private String raz;
    private String fot;
    private String tam;
    private String gen;
    private String col;

    public GSAnimalAdmin(int cod, String nom, String tip, String eda, String raz, String tam, String gen, String col) {
        this.cod = cod;
        this.nom = nom;
        this.tip = tip;
        this.eda = eda;
        this.raz = raz;
        this.tam = tam;
        this.gen = gen;
        this.col = col;
    }

    public GSAnimalAdmin(int cod, String nom, String tip, String eda, String raz, String fot, String tam, String gen, String col) {
        this.cod = cod;
        this.nom = nom;
        this.tip = tip;
        this.eda = eda;
        this.raz = raz;
        this.fot = fot;
        this.tam = tam;
        this.gen = gen;
        this.col = col;
    }

    public GSAnimalAdmin(int cod) {
        this.cod = cod;
    }

    public GSAnimalAdmin() {
    }

    public GSAnimalAdmin(String nom, String tip, String eda, String raz, String fot, String tam, String gen, String col) {
        this.nom = nom;
        this.tip = tip;
        this.eda = eda;
        this.raz = raz;
        this.fot = fot;
        this.tam = tam;
        this.gen = gen;
        this.col = col;
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

    public String getFot() {
        return fot;
    }

    public void setFot(String fot) {
        this.fot = fot;
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
    

    
    
}
