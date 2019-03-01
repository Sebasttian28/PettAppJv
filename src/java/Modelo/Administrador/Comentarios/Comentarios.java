package Modelo.Administrador.Comentarios;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Comentarios {
    
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public ArrayList<GSComentarios> Consultar(){
        ArrayList<GSComentarios> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from comentarios");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSComentarios CF = new GSComentarios(res.getInt(1),res.getString(2),res.getString(3),res.getInt(4));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
    }
    
    public ArrayList<GSComentarios> Consultar1(String pr){
        ArrayList<GSComentarios> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from comentarios where codigo_comentario='"+pr+"'");
            res=ps.executeQuery();
            while (res.next()) {
                GSComentarios CF = new GSComentarios(res.getInt(1),res.getString(2),res.getString(3),res.getInt(4));
                R.add(CF);
            }
            } catch (Exception e) {
            }
            return R;
        }
    
    public int Actualizar(GSComentarios AF){
        int x=0;
        try {
                ps=cnn.prepareStatement("call usuario_comentarios_actu ('"+AF.getFec()+"','"+AF.getCue()+"','"+AF.getAdo()+"','"+AF.getCod()+"')");
            x=ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return x;
    }
    
}
