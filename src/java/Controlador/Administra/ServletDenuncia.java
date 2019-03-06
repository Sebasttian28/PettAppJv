/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Denuncia.Denuncia;
import Modelo.Administrador.Denuncia.GSDenunciaAdmin;
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
@MultipartConfig
@WebServlet(name = "ServletDenuncia", urlPatterns = {"/ServletDenuncia"})
public class ServletDenuncia extends HttpServlet {

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
            
            if (request.getParameter("inevid")!=null) {
        this.Ingresardenuncia(request, response);
        }  
        
          if (request.getParameter("denunci")!=null) {
        this.Ingresardenunciaciudadano(request, response);
        } 
        
        
    }
  protected void Ingresardenuncia(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
           String fec,des,ced,den,men;
        fec=request.getParameter("fecha");
        des=request.getParameter("tipo");
        ced=request.getParameter("cedula");
        men=request.getParameter("denuncia");
         Part foto=request.getPart("IMG");
          String nomfoto=foto.getSubmittedFileName();
          String nombre=fec+"_"+nomfoto;
          
          String Url="C:\\Users\\Edwin Abril\\Documents\\NetBeansProjects\\PettAppJv\\web\\Administrador\\FotosDenuncia\\"+nombre;
          
          String Url2="FotosDenuncia/"+nombre;
          
          InputStream file=foto.getInputStream();
          File f=new File(Url);
          FileOutputStream sal=new FileOutputStream(f);
          int num=file.read();
          while(num!= -1){
              sal.write(num);
              num=file.read();
          }

        GSDenunciaAdmin con=new GSDenunciaAdmin(fec,des,ced,men,Url2);
        Denuncia in=new Denuncia();
        in.Ingresar_denuncia(con);
        request.getRequestDispatcher("Administrador/Denuncia/IngresarDenuncia_Adm.jsp").forward(request, response);

       
    }
    protected void Ingresardenunciaciudadano(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
           String fec,des,ced,den,men;
        fec=request.getParameter("fecha");
        des=request.getParameter("tipo");
        ced=request.getParameter("cedula");
        men=request.getParameter("denuncia");
         Part foto=request.getPart("IMG");
          String nomfoto=foto.getSubmittedFileName();
          String nombre=fec+"_"+nomfoto;
          
          String Url="C:\\Users\\Edwin Abril\\Documents\\NetBeansProjects\\PettAppJv\\web\\Uploads\\Denuncia\\"+nombre;
          
          String Url2=nombre;
          
          InputStream file=foto.getInputStream();
          File f=new File(Url);
          FileOutputStream sal=new FileOutputStream(f);
          int num=file.read();
          while(num!= -1){
              sal.write(num);
              num=file.read();
          }

        GSDenunciaAdmin con=new GSDenunciaAdmin(fec,des,ced,men,Url2);
        Denuncia in=new Denuncia();
        in.Ingresar_denuncia(con);
        response.sendRedirect("Ciudadano/Menu/MenuCiudadano.jsp");

       
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
