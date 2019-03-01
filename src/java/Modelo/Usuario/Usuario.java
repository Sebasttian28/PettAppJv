package Modelo.Usuario;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Usuario {
    
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public void Ingresar_ciud(GSUsuario ing){
        try{
            ps=cnn.prepareStatement("insert into login_usuarios values(?,?,?,?)");
            ps.setString(1,ing.getNom());
            ps.setString(2,ing.getCla());
            ps.setInt(3,ing.getRol());
            ps.setString(4,ing.getFot());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Usuario Ciudadano Ingresado Correctamente");
        
        
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se ha podido Ingresar el Ciudadano");
        }
    }
    
    public ArrayList<GSUsuario> Consultar1(String pr){
        ArrayList<GSUsuario> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from login_usuarios where nombre_usuario='"+pr+"'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSUsuario CF = new GSUsuario(res.getString(1),res.getString(2),res.getInt(3),res.getString(4));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
        }
    
    public ArrayList<GSUsuario> ConsultarA(){
        ArrayList<GSUsuario> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from login_usuarios where rol_login='1'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSUsuario CF = new GSUsuario(res.getString(1),res.getString(2),res.getInt(3),res.getString(4));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
        }
    
    public int Actualizar(GSUsuario AF){
        int x=0;
        try {
            ps=cnn.prepareStatement("call login_usuariosact_admin_Admin('"+AF.getNom()+"','"+AF.getCla()+"','"+AF.getFot()+"')");
            x=ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return x;
    }
    
}
