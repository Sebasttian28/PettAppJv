/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Veterinaria.GSVeterinaria;
import Modelo.Administrador.Veterinaria.Veterinaria;
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

/**
 *
 * @author SENA
 */
@WebServlet(name = "ServletVeterinaria", urlPatterns = {"/ServletVeterinaria"})
@MultipartConfig
public class ServletVeterinaria extends HttpServlet {

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
        
        if(request.getParameter("botonfunci")!=null){
            this.Ingresar(request, response);
        }
        
    }
        
    protected void Ingresar(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();

        String nit,tel,nom,dir;
        nit=request.getParameter("nit");
        tel=request.getParameter("telefono");
        nom=request.getParameter("nombre");
        dir=request.getParameter("direccion");
         Part foto=request.getPart("foto");
          String nomfoto=foto.getSubmittedFileName();
          String nombre=nit+nom;
          
          String Url="C:\\Users\\Edwin Abril\\Documents\\NetBeansProjects\\PettAppJ\\web\\Uploads\\FotosUsuarios/"+nombre;
          
          String Url2=nombre;
          
          InputStream file=foto.getInputStream();
          File f=new File(Url);
          FileOutputStream sal=new FileOutputStream(f);
          int num=file.read();
          while(num!= -1){
              sal.write(num);
              num=file.read();
          }
        
        int rol = 3;
        String cla = "veterinaria";
        GSUsuario con2=new GSUsuario(nit,cla,rol,Url2);
        Usuario in2=new Usuario();
        in2.Ingresar_ciud(con2);
        GSVeterinaria con=new GSVeterinaria(nit,tel,nom,dir);
        Veterinaria in=new Veterinaria();
        in.Insertar(con);
        response.sendRedirect("Administrador/Veterinaria/Ingresar_Veterinaria.jsp");
        
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
