package Modelo.Administrador.Seguimiento;

public class GSSeguimientoAdmin {
    private int cod;
    private int codp;
    private String tel;
    private String dir; 
    private String fij;
    private String cer;
    private String cpf;
    private int est;
    private int resi;
    private String ubi;
    private String tvi;
    private int rpun;
    private String reci;
    private String ced;
    private int coda;

    public GSSeguimientoAdmin(int cod, int codp, String tel, String dir, String fij, String cer, String cpf, int est, int resi, String ubi, String tvi, int rpun, String reci, String ced, int coda) {
        this.cod = cod;
        this.codp = codp;
        this.tel = tel;
        this.dir = dir;
        this.fij = fij;
        this.cer = cer;
        this.cpf = cpf;
        this.est = est;
        this.resi = resi;
        this.ubi = ubi;
        this.tvi = tvi;
        this.rpun = rpun;
        this.reci = reci;
        this.ced = ced;
        this.coda = coda;
    }

    public GSSeguimientoAdmin(int codp, String tel, String dir, String fij, String cer, String cpf, int est, int resi, String ubi, String tvi, int rpun, String reci, String ced, int coda) {
        this.codp = codp;
        this.tel = tel;
        this.dir = dir;
        this.fij = fij;
        this.cer = cer;
        this.cpf = cpf;
        this.est = est;
        this.resi = resi;
        this.ubi = ubi;
        this.tvi = tvi;
        this.rpun = rpun;
        this.reci = reci;
        this.ced = ced;
        this.coda = coda;
    }

    public GSSeguimientoAdmin() {
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public int getCodp() {
        return codp;
    }

    public void setCodp(int codp) {
        this.codp = codp;
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

    public String getFij() {
        return fij;
    }

    public void setFij(String fij) {
        this.fij = fij;
    }

    public String getCer() {
        return cer;
    }

    public void setCer(String cer) {
        this.cer = cer;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public int getEst() {
        return est;
    }

    public void setEst(int est) {
        this.est = est;
    }

    public int getResi() {
        return resi;
    }

    public void setResi(int resi) {
        this.resi = resi;
    }

    public String getUbi() {
        return ubi;
    }

    public void setUbi(String ubi) {
        this.ubi = ubi;
    }

    public String getTvi() {
        return tvi;
    }

    public void setTvi(String tvi) {
        this.tvi = tvi;
    }

    public int getRpun() {
        return rpun;
    }

    public void setRpun(int rpun) {
        this.rpun = rpun;
    }

    public String getReci() {
        return reci;
    }

    public void setReci(String reci) {
        this.reci = reci;
    }

    public String getCed() {
        return ced;
    }

    public void setCed(String ced) {
        this.ced = ced;
    }

    public int getCoda() {
        return coda;
    }

    public void setCoda(int coda) {
        this.coda = coda;
    }
 
    
    
}
