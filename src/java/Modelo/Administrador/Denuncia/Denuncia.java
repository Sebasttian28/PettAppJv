package Modelo.Administrador.Denuncia;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Denuncia {

    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public void Ingresar_denuncia(GSDenunciaAdmin ing){
        try{
            ps=cnn.prepareStatement("insert into denuncia (fecha_denuncia,descripcion_denuncia,cedul_ciudadano,mensaje,foto) values(?,?,?,?,?)");
            ps.setString(1,ing.getFec());
            ps.setString(2,ing.getDes());
            ps.setString(3,ing.getCed());
            ps.setString(4,ing.getMen());
            ps.setString(5,ing.getFot());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Denuncia Realizada");
        }
        catch(Exception e){
           JOptionPane.showMessageDialog(null,"No se ha podido Realizar la Denuncia"); 
        }
    }
    
    public ArrayList<GSDenunciaAdmin> Consultar(){
    ArrayList<GSDenunciaAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from denuncia");
            res=ps.executeQuery();
            while (res.next()) {
                GSDenunciaAdmin CF = new GSDenunciaAdmin(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6));
                R.add(CF);
            }
        } catch (Exception e) {
        }
        return R;
    }
    
    public ArrayList<GSDenunciaAdmin> ConsultarD(String C){
    ArrayList<GSDenunciaAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from denuncia where cedul_ciudadano='"+C+"'");
            res=ps.executeQuery();
            while (res.next()) {
                GSDenunciaAdmin CF = new GSDenunciaAdmin(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6));
                R.add(CF);
            }
        } catch (Exception e) {
        }
        return R;
    }
    
}
