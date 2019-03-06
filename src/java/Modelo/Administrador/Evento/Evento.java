package Modelo.Administrador.Evento;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Evento {

    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public void Ingresar_evento(GSEventoAdmin ing){
        try{
            ps=cnn.prepareStatement("insert into jornada (fecha,lugar,duracion,descripcion,foto) values(?,?,?,?,?)");
            ps.setString(1,ing.getFec());
            ps.setString(2,ing.getLug());
            ps.setString(3,ing.getDura());
            ps.setString(4,ing.getDesc());
            ps.setString(5,ing.getFoto());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Evento Ingresado Correctamente");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se ha podido Ingresar el Evento");
        }
    }

    public ArrayList<GSEventoAdmin> Consultar(){
    ArrayList<GSEventoAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from jornada");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSEventoAdmin CF = new GSEventoAdmin(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6));
                R.add(CF);
                
                
            }
        } catch (Exception e) {
        }
        return R;
    }
    
    public ArrayList<GSEventoAdmin> ConsultarL(){
    ArrayList<GSEventoAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("select * from jornada order by fecha desc limit 3");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSEventoAdmin CF = new GSEventoAdmin(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6));
                R.add(CF);
                
                
            }
        } catch (Exception e) {
        }
        return R;
    }
    
    public ArrayList<GSEventoAdmin> Consultar1(String pr){
    ArrayList<GSEventoAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from jornada where codigo_jornada='"+pr+"'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSEventoAdmin CF = new GSEventoAdmin(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6));
                R.add(CF);
                
                
            }
        } catch (Exception e) {
        }
        return R;
    }
    
    public int Actualizar(GSEventoAdmin AF){
        int x=0;
        try {
            ps=cnn.prepareStatement("call FunModificar_Eventos('"+AF.getCod()+"','"+AF.getFec()+"','"+AF.getLug()+"','"+AF.getDura()+"','"+AF.getDesc()+"','"+AF.getFoto()+"')");
            x=ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return x;
    }
}
