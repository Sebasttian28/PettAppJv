/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Login;

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
public class Login {
      conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps = null;
    ResultSet res = null;
    private static String ro;
    
    public ArrayList<GSLogin> login(GSLogin a){
    ArrayList<GSLogin> arreglo = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("select * from login_usuarios where nombre_usuario='"+a.getUsu()+"' and clave='"+a.getCla()+"' ");
            res=ps.executeQuery();
            while(res.next()){
                GSLogin as = new GSLogin(res.getString(1),res.getString(2),res.getInt(3));
                arreglo.add(as);
                ro=res.getString(1);
            }
        } catch (Exception e) {
        }
        return arreglo;
    }
    public String ro(){
        String r=null;
        
        try{
        ps=cnn.prepareStatement("select rol_login from login_usuarios where nombre_usuario='"+ro+"'");
        
        res=ps.executeQuery();
        
        while (res.next()){
            r=res.getString(1);
        }
        }
        catch (Exception e){
                
        }
        JOptionPane.showMessageDialog(null, r);
        return r;
    }
}
