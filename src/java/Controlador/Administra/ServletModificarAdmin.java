/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Admin.Admin;
import Modelo.Administrador.Admin.GSAdminAdmin;
import Modelo.Usuario.GSUsuario;
import Modelo.Usuario.Usuario;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

/**
 *
 * @author SENA
 */
@WebServlet(name = "ServletModificarAdmin", urlPatterns = {"/ServletModificarAdmin"})
@MultipartConfig
public class ServletModificarAdmin extends HttpServlet {

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
           
        if(request.getParameter("BTN") !=null){
                this.Modificar(request, response);
        }
            
        
    }
    
    protected void Modificar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            
            
        String nom,cla,fotosi;
        int x;
        
        nom=request.getParameter("usu");
        cla=request.getParameter("clave");
        fotosi=request.getParameter("fotosi");
        Part fo= request.getPart("fo");
        
        if (fo!=null){
            
          String nomfoto=fo.getSubmittedFileName();
          String nombre=nom;
          String Url="C:\\Users\\Edwin Abril\\Documents\\NetBeansProjects\\PettAppJ\\web\\Uploads\\FotosUsuarios\\"+nombre;
          String Url2=nombre;
          
          InputStream file=fo.getInputStream();
          File f=new File(Url);
          FileOutputStream sal=new FileOutputStream(f);
          int num=file.read();
          while(num!= -1){
              sal.write(num);
              num=file.read();
          }
          
            GSUsuario con2=new GSUsuario(nom,cla,Url2);
            Usuario in2=new Usuario();
            x=in2.Actualizar(con2);
            
            if(x>0){
                JOptionPane.showMessageDialog(null, "Datos Actualizados");
            }
            else{
                JOptionPane.showMessageDialog(null, "Datos No Fueron Actualizados");
            }
        }
        else{
            
            GSUsuario con2=new GSUsuario(nom,cla,fotosi);
            Usuario in2=new Usuario();
            x=in2.Actualizar(con2);
            
            if(x>0){
                JOptionPane.showMessageDialog(null, "Datos Actualizados");
            }
            else{
                JOptionPane.showMessageDialog(null, "Datos No Fueron Actualizados");
            }
        }
        response.sendRedirect("Administrador/Admin/Modificar_Admin.jsp");
            
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
