package Modelo.Preguntas;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Respu {

    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    
    public ArrayList<GSRespuestaFin> Consultar(String a){
        ArrayList<GSRespuestaFin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select respuesta_fin from respuesta_pre where cedula='"+a+"'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSRespuestaFin CF = new GSRespuestaFin(res.getInt(1));
                R.add(CF);
                
            }
            } catch (Exception e) {
            }
            return R;
        }
    
}
