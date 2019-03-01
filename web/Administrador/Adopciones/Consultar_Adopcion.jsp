<%-- 
    Document   : Consultar_Adopcion
    Created on : 23/11/2018, 08:24:15 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Funcionario.Funcionario"%>
<%@page import="Modelo.Administrador.Funcionario.GSFuncionario"%>
<%@page import="Modelo.Administrador.Adopcion.Adopcion"%>
<%@page import="Modelo.Administrador.Adopcion.GSAdopcion"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <title>Adopcion</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloIngresoAdopcion.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main1.js"></script>
        
</head>
    <body>
	<form action="../Menu/Administrador.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
        
        
    <h3 class="display-4">Adopcion</h3>
    	        <%
                ArrayList<GSAdopcion> dat = new ArrayList<>();
                Adopcion co = new Adopcion();
                dat=co.Consultar();
                GSAdopcion cgsc= new GSAdopcion();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
                <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><%=cgsc.getCodap()%></th>
                    </thead>
                    </tr>
                    </table>
                </div>
                
                <div class="caja2">
                    <table class="table">
                        <tr>
                        <th>Animal</th>
                        <th><%=cgsc.getAni()%></th>
                        </tr>
                        <tr>
                        <th>Propietario</th>
                        <th><%=cgsc.getCed()%></th>
                        </tr>
                        <tr>
                        <tr>
                        <th>Respuesta</th>
                        <th><%=cgsc.getMen()%></th>
                        </tr>
                        <tr>
                        <th>Encargado</th>
                        <th><%=cgsc.getDoc()%></th>
                        </tr>
                        <tr>
                        
                        
               <form method='POST' action=''>
                    <input type='hidden' name='cod' value=''>
                    <th><input type='submit' name='modificar' value='Modificar' class='btn btn-info' ></th>
                </form>
            
                <form method='POST' action=''>
                    <input type='hidden' name='codfu' value=''>
                    <th><input type='submit' name='eliminar' value='Eliminar' class='btn btn-danger'></th>
                </form>
                    </tr>
                    </table>
                </div>
                  <div class="caja3">
                         <table class="table">
                         <tr>
                         <thead class='thead-light'>
                    <th colspan='2'> Encargado en  el Proceso</th>
                         </thead>
                    </tr>
                    </table>    
                     </div>
                         <%
                    
                ArrayList<GSFuncionario> datc2 = new ArrayList<>();
                Funcionario co2 = new Funcionario();
                datc2=co2.Consultar_f(cgsc.getDoc());
                GSFuncionario res3= new GSFuncionario();
                for (int l = 0; l < datc2.size() ; l++) {
                        res3=datc2.get(l);
                %>   
                  <div class="caja4">
                            <table class="table">
                                   <tr>
                                   <th>Nombre</th>
                            <th><%=res3.getNom()%></th>
                                </tr>
                                <tr>
                              <th>Documento</th>
                              <th><%=res3.getCed()%></th>
                        </tr>
                        <tr>
                            <th>Telefono</th>
                            <th><%=res3.getTel()%></th>
                        </tr>
                        <tr>
                            <th>Correo</th>
                            <th><%=res3.getCor()%></th>
                        </tr>
                        <tr>
                            <th>Cargo</th>
                            <th><%=res3.getCar()%></th>
                        </tr>
                        <tr>
                            <th>Dependencia</th>
                            <th><%=res3.getDep()%></th>
                        </tr>
                                 <%}%>
                   </table>
                      </div> 
            
            
             </div>
                   <%}%>
    </body>
</html>

