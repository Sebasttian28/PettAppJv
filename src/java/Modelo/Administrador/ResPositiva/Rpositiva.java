/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Administrador.ResPositiva;

import Controlador.conexion;
import Modelo.Administrador.Animal.GSAnimalAdmin;
import Modelo.Administrador.Funcionario.GSFuncionario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author KnokinGm
 */
public class Rpositiva {
    
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public void Ingresar_Positiva(GSRespositiva ing){
        try{
            ps=cnn.prepareStatement("insert into respuestausuario (icono,cedula_respuesta,mensaje,ced_funcio) values(?,?,?,?)");
            ps.setString(1,ing.getFot());
            ps.setString(2,ing.getCed());
            ps.setString(3,ing.getMen());
            ps.setString(4,ing.getDoc());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Respuesta enviada");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se ha podido enviar la Respuesta"+e);
        }
    }
    
     public int EliminarAnim(GSAnimalAdmin igs) {
        
    int x=0;
    
    try{
        
        ps=cnn.prepareStatement("DELETE from animal WHERE codigo_animal='"+igs.getCod()+"'");
        
        ps.executeUpdate();
        }catch (Exception e){
        JOptionPane.showMessageDialog(null, e);
        
    }
    return x;   
    }
     public  ArrayList<GSFuncionario> Consultar_encargado(String enc){
         ArrayList<GSFuncionario> f= new ArrayList<>();
         try{
             ps=cnn.prepareStatement("select * funcionario WHERE cedula_funcionario='"+enc+"'");
             res=ps.executeQuery();
             while(res.next()){
                 GSFuncionario cf=new GSFuncionario(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6));
                 f.add(cf);
             }
             JOptionPane.showMessageDialog(null, f);
         }catch(Exception e){
             
         }
         return f;
     }
     
}
