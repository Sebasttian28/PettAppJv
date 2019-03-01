<%-- 
    Document   : Consultar_Eventp
    Created on : 23/11/2018, 09:10:58 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Usuario.Usuario"%>
<%@page import="Modelo.Usuario.GSUsuario"%>
<%@page import="Modelo.Administrador.Evento.Evento"%>
<%@page import="Modelo.Administrador.Evento.GSEventoAdmin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <title>Evento</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloIngresoEvento.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>

    <body>
	
       
     
       <form action="../Login/loginV.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
        
    <input type="submit" name="cerrar" value="Cerrar Sesion" class="btn btn-light" id="sal">
    <h3 class="display-4">Eventos</h3>
    	        <%
                ArrayList<GSEventoAdmin> dat = new ArrayList<>();
                Evento co = new Evento();
                dat=co.Consultar();
                GSEventoAdmin cgsc1= new GSEventoAdmin();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc1=dat.get(i);
                %>
            <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><%=cgsc1.getLug()%></th>
                    </thead>
                    </tr>
                    </table>
                </div>
                
                <div class="caja2">
                    <table class="table">
                        <tr>
                        <th>Codigo</th>
                        <th><%=cgsc1.getCod()%></th>
                        </tr>
                        <tr>
                        <th>Fecha</th>
                        <th><%=cgsc1.getFec()%></th>
                        </tr>
                        <tr>
                        <th>Lugar</th>            
                        <th><%=cgsc1.getLug()%></th>
                        </tr>
                        <tr>
                        <th>Duracion</th>
                        <th><%=cgsc1.getDura()%></th>
                        </tr>
                        <tr>
                        <th>Descripcion</th>
                        <th><%=cgsc1.getDesc()%></th>
                        </tr>    
                    
               
                
                
                </table>
            </div>
            </div>
            <%}%>
    </body>
</html>
