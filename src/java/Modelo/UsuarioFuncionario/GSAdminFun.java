package Modelo.UsuarioFuncionario;

public class GSAdminFun {
    
    private String ced;
    private String cla;
    private int rol;

    public GSAdminFun(String ced, String cla, int rol) {
        this.ced = ced;
        this.cla = cla;
        this.rol = rol;
    }

    public GSAdminFun(String ced) {
        this.ced = ced;
    }

    public GSAdminFun() {
    }

    public String getCed() {
        return ced;
    }

    public void setCed(String ced) {
        this.ced = ced;
    }

    public String getCla() {
        return cla;
    }

    public void setCla(String cla) {
        this.cla = cla;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }
    
}
