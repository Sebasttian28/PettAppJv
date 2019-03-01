package Modelo.Administrador.Seguimiento;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

public class Seguimiento {

    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    
    public void Ingresar_segui(GSSeguimientoAdmin ing){
     
        try{
           ps=cnn.prepareStatement("insert into seguimiento (postulacion,telefono_contacto,direccion_contacto,telefono_fijo,certificado_laboral,cedula_pdf,estrato,residentes,ubicacion,tipo_vivienta,resultado_puntos,recibo_pub,cedu,animal) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1,ing.getCodp());
            ps.setString(2,ing.getTel());
            ps.setString(3,ing.getDir());
            ps.setString(4,ing.getFij());
            ps.setString(5,ing.getCer());
            ps.setString(6,ing.getCpf());
            ps.setInt(7,ing.getEst());
            ps.setInt(8,ing.getResi());
            ps.setString(9,ing.getUbi());
            ps.setString(10,ing.getTvi());
            ps.setInt(11,ing.getRpun());
            ps.setString(12,ing.getReci());
            ps.setString(13,ing.getCed());
            ps.setInt(14,ing.getCoda());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Seguimiento Ingresado Correctamente");

        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se ha podido Ingresar el seguimiento"+e);
          
        }
    }
}
