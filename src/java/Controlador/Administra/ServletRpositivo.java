/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Adopcion.Adopcion;
import Modelo.Administrador.Adopcion.GSAdopcion;
import Modelo.Administrador.Animal.GSAnimalAdmin;
import Modelo.Administrador.ResPositiva.GSRespositiva;
import Modelo.Administrador.ResPositiva.Rpositiva;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KnokinGm
 */
@WebServlet(name = "ServletRpositivo", urlPatterns = {"/ServletRpositivo"})
public class ServletRpositivo extends HttpServlet {

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
        
         if (request.getParameter("posresp")!=null) {
            this.IngresarRespuesta(request, response);
        }
        
          if (request.getParameter("denresp")!=null) {
            this.IngresarRespuestad(request, response);
        }
    }
  protected void IngresarRespuesta(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int coda;
        String fot,ce,men,doc;
        fot="adopcion.png";
        ce=request.getParameter("cedul");
        men=request.getParameter("posres");
        doc=request.getParameter("enca");
        coda=Integer.parseInt(request.getParameter("anim"));
        GSRespositiva con=new GSRespositiva(fot,ce,men,doc);
        Rpositiva in=new Rpositiva();
        in.Ingresar_Positiva(con);
        GSAnimalAdmin con2=new GSAnimalAdmin(coda);
        Rpositiva in2=new Rpositiva();
        in2.EliminarAnim(con2);
        GSAdopcion con3=new GSAdopcion(fot,coda,ce,doc,men);
        Adopcion in3=new Adopcion();
        in3.Ingresar_adop(con3);
        response.sendRedirect("Funcionario/Seguimiento/Continuar_Postulacion.jsp");
    }
  
    protected void IngresarRespuestad(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int coda;
        String fot,ce,men,doc;
        fot="denuncia.png";
        ce=request.getParameter("cedul");
        men=request.getParameter("denres");
        doc=request.getParameter("encargado");
        GSRespositiva con=new GSRespositiva(fot,ce, men,doc);
        Rpositiva in=new Rpositiva();
        in.Ingresar_Positiva(con);
        response.sendRedirect("Funcionario/ResDenuncia/Respositiva.jsp");

        
        
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
