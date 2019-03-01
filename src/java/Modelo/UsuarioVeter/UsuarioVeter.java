/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.UsuarioVeter;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author KnokinGm
 */
public class UsuarioVeter {
    
     conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    
     public ArrayList<GSUsuarioveter> Consultar2(String pr){
        ArrayList<GSUsuarioveter> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from login_usuarios where nombre_usuario='"+pr+"'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSUsuarioveter CF = new GSUsuarioveter(res.getString(1),res.getString(2),res.getInt(3),res.getString(4));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
        }
}
