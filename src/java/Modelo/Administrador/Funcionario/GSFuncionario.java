package Modelo.Administrador.Funcionario;

public class GSFuncionario {
    
    private String ced;
    private String tel;
    private String nom;
    private String cor;
    private String car;
    private String dep;

    public GSFuncionario(String ced, String tel, String nom, String cor, String car, String dep) {
        this.ced = ced;
        this.tel = tel;
        this.nom = nom;
        this.cor = cor;
        this.car = car;
        this.dep = dep;
    }

    public GSFuncionario(String ced) {
        this.ced = ced;
    }
    

    public GSFuncionario(String ced, String tel, String nom, String cor) {
        this.ced = ced;
        this.tel = tel;
        this.nom = nom;
        this.cor = cor;
    }

    public GSFuncionario() {
    }

    public String getCed() {
        return ced;
    }

    public void setCed(String ced) {
        this.ced = ced;
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

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getCar() {
        return car;
    }

    public void setCar(String car) {
        this.car = car;
    }

    public String getDep() {
        return dep;
    }

    public void setDep(String dep) {
        this.dep = dep;
    }

    
    
}
