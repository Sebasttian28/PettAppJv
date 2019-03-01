package Modelo.Administrador.Mascota;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Mascota {
    
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public void Ingresar_mascota(GSMascotaAdmin ing){
        try{
        ps=cnn.prepareStatement("insert into mascota (nombre_mascota,descendencia,estado_mascota,tipo_mascota,edad_mascota,raza_mascota,ced,foto)values(?,?,?,?,?,?,?,?)");
        ps.setString(1,ing.getNom());
        ps.setString(2,ing.getDes());
        ps.setString(3,ing.getEst());
        ps.setString(4,ing.getTip());
        ps.setString(5,ing.getEda());
        ps.setString(6,ing.getRaz());
        ps.setString(7,ing.getCed());
        ps.setString(8,ing.getFot());
        ps.executeUpdate();
        JOptionPane.showMessageDialog(null,"Mascota Ingresada Correctamente");
        
        
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se ha podido Ingresar la Mascota"+e);
        }
    }    
    public ArrayList<GSMascotaAdmin> Consultar(){
        ArrayList<GSMascotaAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from mascota");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSMascotaAdmin CF = new GSMascotaAdmin(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6),res.getString(7),res.getString(8),res.getString(9));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
    }
    
    public ArrayList<GSMascotaAdmin> Consultar1(String a){
        ArrayList<GSMascotaAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from mascota where ced='"+a+"'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSMascotaAdmin CF = new GSMascotaAdmin(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6),res.getString(7),res.getString(8),res.getString(9));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
    }
}
