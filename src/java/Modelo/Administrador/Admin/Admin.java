/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Administrador.Admin;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author KnokinGm
 */
public class Admin {
      
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public void Ingresar_admin(GSAdminAdmin ing){
        try{
        ps=cnn.prepareStatement("insert into login_usuarios (nombre_usuario,clave,rol_login) values(?,?,?)");
        ps.setString(1,ing.getNom());
        ps.setString(2,ing.getCla());
        ps.setInt(3,ing.getRol());
        ps.executeUpdate();
        JOptionPane.showMessageDialog(null,"Administrador Ingresado Correctamente");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se ha podido Ingresar el Administrador");
        }
    }
    
    public ArrayList<GSAdminAdmin> Consultar(){
        ArrayList<GSAdminAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from login_usuarios where rol_login=1");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSAdminAdmin CF = new GSAdminAdmin(res.getString(1),res.getString(2));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
        }
    
    
    public ArrayList<GSAdminAdmin> Consultar1(String pr){
        ArrayList<GSAdminAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from login_usuarios where rol_login=1 and nombre_usuario='"+pr+"'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSAdminAdmin CF = new GSAdminAdmin(res.getString(1),res.getString(2));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
        
        JOptionPane.showMessageDialog(null, R);
            return R;
        }
    
    
    public int EliminarAdmin(GSAdminAdmin igs) {
        
    int x=0;
    
    try{
        
        ps=cnn.prepareStatement("DELETE from usuarios WHERE nom_usuario='"+igs.getNom()+"'");
        
        ps.executeUpdate();
        }catch (Exception e){
        JOptionPane.showMessageDialog(null, e);
        
    }
    return x;   
    }
    
    public int Actualizar(GSAdminAdmin AF){
        int x=0;
        try {
            ps=cnn.prepareStatement("call act_admin_Admin ('"+AF.getNom()+"','"+AF.getCla()+"')");
            x=ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return x;
    }
    
}
