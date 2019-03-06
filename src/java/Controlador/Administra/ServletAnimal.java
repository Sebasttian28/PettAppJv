/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Adopcion.Adopcion;
import Modelo.Administrador.Adopcion.GSAdoptado;
import Modelo.Administrador.Animal.Animal;
import Modelo.Administrador.Animal.GSAnimalAdmin;
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

@WebServlet(name = "ServletAnimal", urlPatterns = {"/ServletAnimal"})
@MultipartConfig
public class ServletAnimal extends HttpServlet {

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
       
        if (request.getParameter("inganimal")!=null) {
        
        this.IngresarAnimal(request, response);
        }  
          if (request.getParameter("inganimalf")!=null) {
        this.IngresarAnimal(request, response);
        }
    }
    
    protected void IngresarAnimal(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String nomb,tip,ed,raz,tam,gen,col;
        nomb=request.getParameter("nombre");
        tip=request.getParameter("tipo");
        ed=request.getParameter("edad");
        raz=request.getParameter("raza");
        tam=request.getParameter("tam");
        gen=request.getParameter("genero");
        col=request.getParameter("color");
         Part foto=request.getPart("IMG");
          String nomfoto=foto.getSubmittedFileName();
          String nombre=nomb+"_"+nomfoto;
          
          String Url="C:\\Users\\Edwin Abril\\Documents\\NetBeansProjects\\PettAppJv\\web\\Uploads\\FotosAnimal\\"+nombre;
          
          String Url2=nombre;
          
          InputStream file=foto.getInputStream();
          File f=new File(Url);
          FileOutputStream sal=new FileOutputStream(f);
          int num=file.read();
          while(num!= -1){
              sal.write(num);
              num=file.read();
          }


        GSAnimalAdmin con=new GSAnimalAdmin(nomb,tip,ed,raz,Url2,tam,gen,col);
        Animal in=new Animal();
        in.Ingresar_animal(con);
        GSAdoptado con2=new GSAdoptado(nomb,tip,ed,raz,Url2,tam,gen,col);
        Adopcion in2=new Adopcion();
        in2.Guardar_Adoptado(con2);
        response.sendRedirect("Administrador/Animal/Consultar_Animal.jsp");

       
    }
     protected void IngresarAnimalf(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String nomb,tip,ed,raz,tam,gen,col;
        nomb=request.getParameter("nombre");
        tip=request.getParameter("tipo");
        ed=request.getParameter("edad");
        raz=request.getParameter("raza");
        tam=request.getParameter("tam");
        gen=request.getParameter("genero");
        col=request.getParameter("color");
         Part foto=request.getPart("IMG");
          String nomfoto=foto.getSubmittedFileName();
          String nombre=nomb+"_"+nomfoto;
          
          String Url="C:\\Users\\Edwin Abril\\Documents\\NetBeansProjects\\PettAppJv\\web\\Uploads\\FotosAnimal\\"+nombre;
          
          String Url2=nombre;
          
          InputStream file=foto.getInputStream();
          File f=new File(Url);
          FileOutputStream sal=new FileOutputStream(f);
          int num=file.read();
          while(num!= -1){
              sal.write(num);
              num=file.read();
          }


        GSAnimalAdmin con=new GSAnimalAdmin(nomb,tip,ed,raz,Url2,tam,gen,col);
        Animal in=new Animal();
        in.Ingresar_animal(con);
        GSAdoptado con2=new GSAdoptado(nomb,tip,ed,raz,Url2,tam,gen,col);
        Adopcion in2=new Adopcion();
        in2.Guardar_Adoptado(con2);
        response.sendRedirect("Funcionario/Animal/Consultar_Animal.jsp");

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
