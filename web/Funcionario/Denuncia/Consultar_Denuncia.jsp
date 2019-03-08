<%-- 
    Document   : Consultar_Denuncia
    Created on : 23/11/2018, 08:35:33 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Denuncia.Denuncia"%>
<%@page import="Modelo.Administrador.Denuncia.GSDenunciaAdmin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Denuncia</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloIngresoDenuncia.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>
    <body>
	<form action="../Menu/Funcionario.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
    <h3 class="display-4">Denuncia</h3>
    	        <%
                ArrayList<GSDenunciaAdmin> dat = new ArrayList<>();
                Denuncia co = new Denuncia();
                dat=co.Consultar();
                GSDenunciaAdmin cgsc= new GSDenunciaAdmin();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
            <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><%=cgsc.getFec()%>-Cedula: <%=cgsc.getCed()%></th>
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
                        <th>Descripcion</th>            
                        <th><%=cgsc.getDes()%></th>
                        </tr>
                        <tr>
                        <th>Cedula</th>
                        <th><%=cgsc.getCed()%></th>
                        </tr>
                        <tr>
                        <th>Mensaje</th>
                        <th><%=cgsc.getMen()%></th>
                        </tr>
                        <tr>
                        <th>Foto</th>
                        <th><img src="../../Uploads/Denuncia/<%=cgsc.getFot()%>" width="100" height="100"></th>
                        </tr>
                        
               <form method='POST' action='../ResDenuncia/Respositiva.jsp'>
               <input type='hidden' name='cedula' value='<%=cgsc.getCed()%>'>
                    <th><input type='submit' name='acep' value='Aceptar' class='btn btn-info' ></th>
                </form>
            
                <form method='POST' action=''>
              
                    <th><input type='submit' name='eliminar' value='Rechazar' class='btn btn-danger'></th>
                </form>
                
                
                </table>
            </div>
            </div>
            <%}%>
    </body>
</html>

