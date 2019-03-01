package Modelo.Administrador.Adopcion;

import Controlador.conexion;
import Modelo.Administrador.Animal.GSAnimalAdmin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Adopcion {
 
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public ArrayList<GSAdopcion> Consultar(){
    ArrayList<GSAdopcion> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from adopcion");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSAdopcion CF = new GSAdopcion(res.getString(1),res.getInt(2),res.getInt(3),res.getString(4),res.getString(5),res.getString(6));
                R.add(CF);
                
                
            }
            } catch (Exception e) {
            }
            return R;
    }
    
    public void Ingresar_adop(GSAdopcion ing){
        try{
            ps=cnn.prepareStatement("insert into adopcion (icono,animal,cedula,funcionario_encargado,mensaje) values(?,?,?,?,?)");
            ps.setString(1,ing.getIcon());
            ps.setInt(2,ing.getAni());
            ps.setString(3,ing.getCed());
            ps.setString(4,ing.getDoc());
            ps.setString(5,ing.getMen());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Proceso Finalizado Correctamente");
        
        
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"Error verifica los datos Ingresados");
        }
    }
     public void Guardar_Adoptado(GSAdoptado ing){
        try{
            ps=cnn.prepareStatement("insert into adoptados (nombre_animal,tipo_animal,edad_animal,raza_animal,tamano,genero,color,foto) values (?,?,?,?,?,?,?,?)");
            ps.setString(1,ing.getNom());
            ps.setString(2,ing.getTip());
            ps.setString(3,ing.getEda());
            ps.setString(4,ing.getRaz());
            ps.setString(5,ing.getTam());
            ps.setString(6,ing.getGen());
            ps.setString(7,ing.getCol());
            ps.setString(8,ing.getFot());
            ps.executeUpdate();
        }
        catch(Exception e){
         JOptionPane.showMessageDialog(null, "No se ha podido Ingresar el Animal"+e);
                    
        }
    }

}
