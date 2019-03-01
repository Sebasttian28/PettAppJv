/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Administrador.Ciudadano.Ciudadano;
import Modelo.Administrador.Ciudadano.GSCiudadanoAdmin;
import Modelo.Preguntas.GSRespuestaFin;
import Modelo.Preguntas.Respu;
import Modelo.Preguntas.Respuestas;
import Modelo.Usuario.GSUsuario;
import Modelo.Usuario.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Edwin Abril
 */
@WebServlet(name = "ServletRespuesta", urlPatterns = {"/ServletRespuesta"})
public class ServletRespuesta extends HttpServlet {
    private String c;
    private int r;
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
        
        if (request.getParameter("readop")!=null) {
            
        String dat2=request.getParameter("dat1");
        
        String ced=request.getParameter("cedu");
        int ani=Integer.parseInt(request.getParameter("code"));
        
        ArrayList<GSCiudadanoAdmin> dares = new ArrayList<>();
            Ciudadano cores = new Ciudadano();
            dares=cores.Consultar1(dat2);
            GSCiudadanoAdmin cgscres= new GSCiudadanoAdmin();

            for (int ire = 0; ire < dares.size() ; ire++) {
            cgscres=dares.get(ire);
        
        ArrayList<GSRespuestaFin> datfin = new ArrayList<>();
        Respu cofin = new Respu();
        datfin=cofin.Consultar(cgscres.getCed());
        GSRespuestaFin cgscfin= new GSRespuestaFin();
            
        if(datfin.size()>0){
            int res=Integer.parseInt(request.getParameter("res1"));
            for (int ifin = 0; ifin < datfin.size() ; ifin++) {
            cgscfin=datfin.get(ifin);
            JOptionPane.showMessageDialog(null, "Formulario");
            HttpSession htt=request.getSession();
            Integer dato1= new Integer(res);
            htt.setAttribute("res1", dato1);
            String dato= new String(dat2);
            htt.setAttribute("nom1", dato);
            String dato2= new String(ced);
            htt.setAttribute("ced1", dato2);
            Integer dato3= new Integer(ani);
            htt.setAttribute("ani1", dato3);
            response.sendRedirect("Ciudadano/Postulacion/IngresarPostulacion.jsp");   
            
        }
        }
        else{
            JOptionPane.showMessageDialog(null, "Preguntas");
            HttpSession htt=request.getSession();
            String dato= new String(dat2);
            htt.setAttribute("nom1", dato);
            Integer dato3= new Integer(ani);
            htt.setAttribute("ani1", dato3);
            response.sendRedirect("Ciudadano/Preguntas/Pagina1.jsp");
        }
        }
        }
        
       
       
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
