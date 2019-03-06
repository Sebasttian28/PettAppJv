package Modelo.Administrador.Animal;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Animal {
    
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public void Ingresar_animal(GSAnimalAdmin ing){
        try{
            ps=cnn.prepareStatement("insert into animal (nombre_animal,tipo_animal,edad_animal,raza_animal,foto,tamano,genero,color) values(?,?,?,?,?,?,?,?)");
            ps.setString(1,ing.getNom());
            ps.setString(2,ing.getTip());
            ps.setString(3,ing.getEda());
            ps.setString(4,ing.getRaz());
            ps.setString(5,ing.getFot());
            ps.setString(6,ing.getTam());
            ps.setString(7,ing.getGen());
            ps.setString(8,ing.getCol());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Nuevo Animal Ingresado");
        }
        catch(Exception e){
           JOptionPane.showMessageDialog(null,"No se ha podido Ingresar el Animal"+e); 
        }
    }
    
   
    
    public ArrayList<GSAnimalAdmin> Consultar(){
    ArrayList<GSAnimalAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from animal");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSAnimalAdmin CF = new GSAnimalAdmin(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6),res.getString(7),res.getString(8),res.getString(9));
                R.add(CF);
                
                
            }
        } catch (Exception e) {
        }
        return R;
    }
    
    public ArrayList<GSAnimalAdmin> Filtro(String fil){
    ArrayList<GSAnimalAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from animal where raza_animal LIKE"+"'%"+fil+"%'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSAnimalAdmin CF = new GSAnimalAdmin(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6),res.getString(7),res.getString(8),res.getString(9));
                
                R.add(CF);
            }
        } catch (Exception e) {
        }
        return R;
    }
    
    public int EliminarAnimal(GSAnimalAdmin igs) {
        
    int x=0;
    
    try{
        
        ps=cnn.prepareStatement("DELETE from animal WHERE codigo_animal='"+igs.getCod()+"'");
        
        ps.executeUpdate();
        }catch (Exception e){
        JOptionPane.showMessageDialog(null, e);
        
    }
    return x;   
    }
}
