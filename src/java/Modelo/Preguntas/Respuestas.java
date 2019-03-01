package Modelo.Preguntas;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Respuestas {

    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    private static String c;
    
    
    public ArrayList<GSRespuestaFin> Consultar1(String pr){
        ArrayList<GSRespuestaFin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from respuesta_pre");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSRespuestaFin CF = new GSRespuestaFin(res.getString(1),res.getInt(2));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
        }
    
        
}
