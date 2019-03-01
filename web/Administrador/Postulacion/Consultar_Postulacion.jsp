<%-- 
    Document   : Consultar_Postulacion
    Created on : 23/11/2018, 08:52:39 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Postulacion.Postulacion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Administrador.Postulacion.GSPostulacionAdmin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Postulacion</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloIngresoPostulacion.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>
    <body>
	<form action="../Menu/Administrador.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
    <h3 class="display-4">Postulacion</h3>
    	        <%
                ArrayList<GSPostulacionAdmin> dat = new ArrayList<>();
                Postulacion co = new Postulacion();
                dat=co.ConsultaAdmin();
                GSPostulacionAdmin cgsc= new GSPostulacionAdmin();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
                <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><%=cgsc.getCod()%></th>
                    </thead>
                    </tr>
                    </table>
                </div>
                
                <div class="caja2">
                    <table class="table">
                        <tr>
                        <th>Codigo</th>
                        <th><%=cgsc.getCod()%></th>
                        </tr>
                        <tr>
                        <th>Telefono</th>
                        <th><%=cgsc.getTel()%></th>
                        </tr>
                        <tr>
                        <th>Direccion</th>
                        <th><%=cgsc.getDir()%></th>
                        </tr>
                        <tr>
                        <th>Telefono Fijo</th>
                        <th><%=cgsc.getFij()%></th>
                        </tr>
                        <tr>
                        <th>Certificado</th>
                        <th><%=cgsc.getCer()%></th>
                        </tr>
                        <tr>
                        <th>Fotocopia Cedula</th>
                        <th><%=cgsc.getCpf()%></th>
                        </tr>
                        <tr>
                         <th>Estrato</th>
                         <th><%=cgsc.getEst()%></th>
                        </tr>
                        <tr>
                          <th>Cantidad de Residentes</th>
                          <th><%=cgsc.getResi()%></th>
                        </tr>
                        <tr>
                        <th>Ubicacion de Vivienda</th>
                        <th><%=cgsc.getUbi()%></th>
                        </tr>
                        <tr>
                         <th>Tipo de Vivienda</th>
                         <th><%=cgsc.getTvi()%></th>
                        </tr>
                        <tr>
                            <th>Puntaje</th>
                            <th><%=cgsc.getRpun()%>/20</th>
                        </tr>
                        <tr>
                            <th>Recibo Publico</th>
                            <th><%=cgsc.getReci()%></th>
                        </tr>
                        <tr>
                        <th>Cedula</th>
                        <th><%=cgsc.getCed()%></th>
                        </tr>
                        <tr>
                        <th>Animal</th>
                        <th><%=cgsc.getCoda()%></th>
                        </tr>
                    <tr>
                    
                <form method='POST' action='../../ServletSeguimiento' enctype="multipart/form-data">
                    <input type='hidden' name='codigo' value='<%=cgsc.getCod()%>'>
                    <input type='hidden' name='telefono' value='<%=cgsc.getTel()%>'>
                    <input type='hidden' name='direccion' value='<%=cgsc.getDir()%>'>
                    <input type='hidden' name='fijo' value='<%=cgsc.getFij()%>'>
                    <input type='hidden' name='cerp' value='<%=cgsc.getCer()%>'>
                    <input type='hidden' name='cpf' value='<%=cgsc.getCpf()%>'>
                    <input type='hidden' name='est' value='<%=cgsc.getEst()%>'>
                    <input type='hidden' name='resi' value='<%=cgsc.getResi()%>'>
                    <input type='hidden' name='ubi' value='<%=cgsc.getUbi()%>'>
                    <input type='hidden' name='tvi' value='<%=cgsc.getTvi()%>'>
                    <input type='hidden' name='repun' value='<%=cgsc.getRpun()%>'>
                    <input type='hidden' name='rpub' value='<%=cgsc.getReci()%>'>
                    <input type='hidden' name='cedula' value='<%=cgsc.getCed()%>'>
                    <input type='hidden' name='animal' value='<%=cgsc.getCoda()%>'>
                    <th><input type='submit' name='seguimien' value='Seguimiento' class='btn btn-info' ></th>
                </form>
            
                <form method='POST' action=''>
                    <input type='hidden' name='codfu' value=''>
                    <th><input type='submit' name='eliminar' value='Eliminar' class='btn btn-danger'></th>
                </form>
                
                
                </table>
<!Enviar datos>                
           
<!Enviar datos>              
              
            </table>
            </div>
            </div>
            <%}%>
            <%
                if (request.getParameter("modificar")!=null){
                        HttpSession htt=request.getSession();
                        String naom=request.getParameter("nomA");
                        String dato= new String(naom);
                        htt.setAttribute("nom", dato);
                        response.sendRedirect("Modificar_Admin.jsp");
                }
            %>
    </body>
</html>
