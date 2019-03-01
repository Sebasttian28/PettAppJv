/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author KnokinGm
 */
public class conexion {
      Connection cnn=null;
    public Connection conexionpa(){
    try{
    Class.forName("com.mysql.jdbc.Driver");
    cnn=DriverManager.getConnection("jdbc:mysql://localhost/proyecto","root","0000");
    }
    catch(Exception e){
        System.out.println("Error de conexion" +e);
    }
    
    
    return cnn;
}
}
