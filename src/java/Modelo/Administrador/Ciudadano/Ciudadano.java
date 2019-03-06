package Modelo.Administrador.Ciudadano;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Ciudadano {
    
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public void Ingresar_ciudadano(GSCiudadanoAdmin ing){
        try{
            ps=cnn.prepareStatement("insert into ciudadano values(?,?,?,?,?,?)");
            ps.setString(1,ing.getCed());
            ps.setString(2,ing.getNom());
            ps.setString(3,ing.getTel());
            ps.setString(4,ing.getDir());
            ps.setString(5,ing.getCor());
            ps.setString(6,ing.getUsu());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Datos Del Ciudadano Ingresados");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se pueden Ingresar los datos del ciudadano");
        }
    }
    
    public ArrayList<GSCiudadanoAdmin> Consultar(){
    ArrayList<GSCiudadanoAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from ciudadano");
            res=ps.executeQuery();
            while (res.next()) {
                GSCiudadanoAdmin CF = new GSCiudadanoAdmin(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6));
                R.add(CF);
            }
        } catch (Exception e) {
        }
        return R;
    }
    
    public ArrayList<GSCiudadanoAdmin> Consultar1(String pr){
        ArrayList<GSCiudadanoAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from ciudadano where usuario_ciu='"+pr+"'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSCiudadanoAdmin CF = new GSCiudadanoAdmin(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
        }
    
    
    public int EliminarCiudadano(GSCiudadanoAdmin igs) {
        
    int x=0;
    
    try{
        
        ps=cnn.prepareStatement("DELETE from ciudadano WHERE cedula='"+igs.getCed()+"'");
        
        ps.executeUpdate();
        }catch (Exception e){
        JOptionPane.showMessageDialog(null, e);
        
    }
    return x;   
    }
}
