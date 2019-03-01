package Modelo.Respuesta;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Respuesta {

    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
      
    
    public ArrayList<GSRespuesta> Consultar(){
    ArrayList<GSRespuesta> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from respuestausuario");
            res=ps.executeQuery();
            while (res.next()) {
                GSRespuesta CF = new GSRespuesta(res.getString(1),res.getInt(2),res.getString(3),res.getString(4),res.getString(5));
                R.add(CF);
            }
        } catch (Exception e) {
        }
        return R;
    }
    public ArrayList<GSRespuesta> Consultar1(String pr){
        ArrayList<GSRespuesta> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from respuestausuario where cedula_respuesta='"+pr+"'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSRespuesta CF = new GSRespuesta(res.getString(1),res.getInt(2),res.getString(3),res.getString(4),res.getString(5));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
        }
}




