/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Mascota.GSMascotaAdmin;
import Modelo.Administrador.Mascota.Mascota;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author SENA
 */
@WebServlet(name = "ServletMascota", urlPatterns = {"/ServletMascota"})
public class ServletMascota extends HttpServlet {

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
            
            if (request.getParameter("inmasc")!=null) {
            this.Ingresarmascota(request, response);
        }
    }
    
    protected void Ingresarmascota(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String nom,des,ope,tip,eda,raz,ced;
        nom=request.getParameter("nombre");
        des=request.getParameter("desc");
        ope=request.getParameter("operaciones");
        tip=request.getParameter("tam");
        eda=request.getParameter("edad");
        raz=request.getParameter("raza");
        ced=request.getParameter("cedula");
        Part foto=request.getPart("IMG");
          String nomfoto=foto.getSubmittedFileName();
          String nombre=nom+"_"+nomfoto;
          
          String Url="C:\\Users\\Edwin Abril\\Documents\\NetBeansProjects\\PettAppJv\\web\\Administrador\\FotosMascota\\"+nombre;
          
          String Url2="FotosMascota/"+nombre;
          
          InputStream file=foto.getInputStream();
          File f=new File(Url);
          FileOutputStream sal=new FileOutputStream(f);
          int num=file.read();
          while(num!= -1){
              sal.write(num);
              num=file.read();
          }

        GSMascotaAdmin con=new GSMascotaAdmin(nom, des, ope, tip, eda, raz, ced,Url2);
        Mascota in=new Mascota();
        in.Ingresar_mascota(con);
        request.getRequestDispatcher("Administrador/Mascota/IngresarMascota_Adm.jsp").forward(request, response);
       
       
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
