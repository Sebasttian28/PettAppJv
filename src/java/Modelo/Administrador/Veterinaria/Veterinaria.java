package Modelo.Administrador.Veterinaria;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Veterinaria {
    
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps = null;
    ResultSet res=null;
    
    public void Insertar(GSVeterinaria FGS){
        
        try {
        
        ps=cnn.prepareStatement("insert into veterinaria values(?,?,?,?)");
        ps.setString(1, FGS.getNit());
        ps.setString(2, FGS.getTel());
        ps.setString(3, FGS.getNom());
        ps.setString(4, FGS.getDir());
        ps.executeUpdate();
        
            JOptionPane.showMessageDialog(null, "Datos Guardados");
            
        } catch (Exception e) {
            
            JOptionPane.showMessageDialog(null, "No se inserto "+e);
            
        }
        
    }
    
    public ArrayList<GSVeterinaria> Consultar(){
    ArrayList<GSVeterinaria> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from veterinaria");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSVeterinaria CF = new GSVeterinaria(res.getString(1),res.getString(2),res.getString(3),res.getString(4));
                R.add(CF);
                
                
            }
        } catch (Exception e) {
        }
        return R;
    }
    
    
}
