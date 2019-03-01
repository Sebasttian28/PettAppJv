package Modelo.Administrador.Funcionario;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Funcionario {
    
    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps = null;
    ResultSet res=null;
    
    public void Insertar(GSFuncionario FGS){
        
        try {
        
        ps=cnn.prepareStatement("insert into funcionario values(?,?,?,?,?,?)");
        ps.setString(1, FGS.getCed());
        ps.setString(2, FGS.getTel());
        ps.setString(3, FGS.getNom());
        ps.setString(4, FGS.getCor());
        ps.setString(5, FGS.getCar());
        ps.setString(6, FGS.getDep());
        ps.executeUpdate();
        
            JOptionPane.showMessageDialog(null, "Datos Guardados");
            
        } catch (Exception e) {
            
            JOptionPane.showMessageDialog(null, "No se inserto "+e);
            
        }
        
    }
        
    public ArrayList<GSFuncionario> Consultar(){
    ArrayList<GSFuncionario> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from funcionario");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSFuncionario CF = new GSFuncionario(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6));
                R.add(CF);
                
                
            }
        } catch (Exception e) {
        }
        return R;
    }
    
       public ArrayList<GSFuncionario> Consultar_f(String ced){
    ArrayList<GSFuncionario> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from funcionario where cedula_funcionario='"+ced+"'");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSFuncionario CF = new GSFuncionario(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6));
                R.add(CF);
                
            }
        } catch (Exception e) {
        }
        return R;
    }
       
    public int Actualizar(GSFuncionario AF){
        int x=0;
        try {
            ps=cnn.prepareStatement("call Modificar_Funcionario('"+AF.getCed()+"','"+AF.getTel()+"','"+AF.getNom()+"','"+AF.getCor()+"','"+AF.getDep()+"')");
            x=ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return x;
    }
}
