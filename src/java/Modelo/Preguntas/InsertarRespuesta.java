package Modelo.Preguntas;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

public class InsertarRespuesta {
    
    
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    
    
    public void Respuestas(GSRespuestas ing){
        try{
        ps=cnn.prepareStatement("insert into preguntas values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setInt(1,ing.getRe1());
        ps.setInt(2,ing.getRe2());
        ps.setInt(3,ing.getRe3());
        ps.setInt(4,ing.getRe4());
        ps.setInt(5,ing.getRe5());
        ps.setInt(6,ing.getRe6());
        ps.setInt(7,ing.getRe7());
        ps.setInt(8,ing.getRe8());
        ps.setInt(9,ing.getRe9());
        ps.setInt(10,ing.getRe10());
        ps.setInt(11,ing.getRe11());
        ps.setInt(12,ing.getRe12());
        ps.setInt(13,ing.getRe13());
        ps.setInt(14,ing.getRe14());
        ps.setInt(15,ing.getRe15());
        ps.setInt(16,ing.getRe16());
        ps.setInt(17,ing.getRe17());
        ps.setInt(18,ing.getRe18());
        ps.setInt(19,ing.getRe19());
        ps.setInt(20,ing.getRe20());
        ps.setString(21,ing.getCed());
        ps.executeUpdate();
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se ha podido Ingresar las respuestas"+e);
        }
    }
    public void RespuestaFin(GSRespuestaFin ing){
        JOptionPane.showMessageDialog(null, ing.getCed());
        int Valor=0;
        try{
        ps=cnn.prepareStatement("call preguntafin(?,?)");
        ps.setString(1,ing.getCed());
        ps.setInt(2,ing.getRe1());
            JOptionPane.showMessageDialog(null,"Exito");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se ha podido Ingresar las respuestas"+e);
        }
    }
}
