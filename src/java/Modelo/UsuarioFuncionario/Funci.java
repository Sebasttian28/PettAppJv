package Modelo.UsuarioFuncionario;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

public class Funci {
    
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    
    public void Ingresar_funci(GSAdminFun ing){
        try{
            ps=cnn.prepareStatement("insert into login_usuarios values(?,?,?)");
        ps.setString(1,ing.getCed());
        ps.setString(2,ing.getCla());
        ps.setInt(3,ing.getRol());
        ps.executeUpdate();
        JOptionPane.showMessageDialog(null,"Funcionario Ingresado Correctamente");
        
        
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se ha podido Ingresar el Funcionario");
        }
    }
}
