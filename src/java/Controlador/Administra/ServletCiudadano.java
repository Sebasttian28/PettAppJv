/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Ciudadano.Ciudadano;
import Modelo.Administrador.Ciudadano.GSCiudadanoAdmin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author SENA
 */
@WebServlet(name = "ServletCiudadano", urlPatterns = {"/ServletCiudadano"})
public class ServletCiudadano extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         
        if (request.getParameter("inciudat")!=null) {
            this.IngresarCiudadano(request, response);
        }
        
        if(request.getParameter("eliminar") !=null){
                this.EliminarCiudadano(request, response);
        }
    }
    
    protected void IngresarCiudadano(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        String ced,nom,tel,dir,cor,usu;
        ced=request.getParameter("cedula");
        nom=request.getParameter("nombre");
        tel=request.getParameter("telefono");
        dir=request.getParameter("direccion");
        cor=request.getParameter("correo");
        usu=request.getParameter("usuario");
       
        GSCiudadanoAdmin con=new GSCiudadanoAdmin(ced,nom,tel,dir,cor,usu);
        Ciudadano in=new Ciudadano();
        in.Ingresar_ciudadano(con);
        request.getRequestDispatcher("Administrador/Ciudadano/IngresarCiudadano_Adm.jsp").forward(request, response);
       
       
    }
    
    protected void EliminarCiudadano(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            
            String ced;
            
            int x;
            
            ced=request.getParameter("cedula");
            
            GSCiudadanoAdmin igs = new GSCiudadanoAdmin(ced);
            Ciudadano act = new Ciudadano();
            x=act.EliminarCiudadano(igs);
           
            if(x>=0){
            JOptionPane.showMessageDialog(null, "Datos Eliminados");
            }
            else{
            JOptionPane.showMessageDialog(null, "Datos no Eliminados");
                
        }
            request.getRequestDispatcher("Administrador/Ciudadano/Consultar_Ciudadano.jsp").forward(request, response);
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
