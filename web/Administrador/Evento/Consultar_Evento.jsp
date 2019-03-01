<%-- 
    Document   : Consultar_Evento
    Created on : 23/11/2018, 08:37:06 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Evento.Evento"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Administrador.Evento.GSEventoAdmin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Evento</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloIngresoEvento.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>
    <body>
        <form action="../Menu/Administrador.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
        <form action="IngresarEvento_Adm.jsp">
            <input type="submit" name="ing" value="Insertar" class="btn btn-outline-dark" id="vol">
  	</form>

    <h3 class="display-4">Eventos</h3>
    	        <%
                ArrayList<GSEventoAdmin> dat = new ArrayList<>();
                Evento co = new Evento();
                dat=co.Consultar();
                GSEventoAdmin cgsc= new GSEventoAdmin();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
            <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><%=cgsc.getLug()%></th>
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
                        <th>Fecha</th>
                        <th><%=cgsc.getFec()%></th>
                        </tr>
                        <tr>
                        <th>Lugar</th>            
                        <th><%=cgsc.getLug()%></th>
                        </tr>
                        <tr>
                        <th>Duracion</th>
                        <th><%=cgsc.getDura()%></th>
                        </tr>
                        <tr>
                        <th>Descripcion</th>
                        <th><%=cgsc.getDesc()%></th>
                        </tr>    
                    
                <form method='POST' action='Modificar_Evento.jsp'>
                    <input type='hidden' name='cod' value='<%=cgsc.getCod()%>'>
                    <th><input type='submit' name='modificar' value='Modificar' class='btn btn-info' ></th>
                </form>
            
                <form method='POST' action=''>
                    <input type='hidden' name='codfu' value=''>
                    <th><input type='submit' name='eliminar' value='Eliminar' class='btn btn-danger'></th>
                </form>
                
                
                </table>
            </div>
            </div>
            <%}%>
            <%
                if (request.getParameter("modificar")!=null){
                        HttpSession htt=request.getSession();
                        String naom=request.getParameter("cod");
                        String dato= new String(naom);
                        htt.setAttribute("nom", dato);
                        response.sendRedirect("Modificar_Evento.jsp");
                }
            %>
    </body>
</html>
