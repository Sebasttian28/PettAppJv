<%-- 
    Document   : Consultar_Ciudadano
    Created on : 23/11/2018, 08:32:15 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Ciudadano.Ciudadano"%>
<%@page import="Modelo.Administrador.Ciudadano.GSCiudadanoAdmin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ciudadano</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloIngresoCiudadano1.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ1/jquery-3.3.11.min.js"></script>
        <script src="JQ1/main1.js"></script>
        
</head>
    <body>
	<form action="../Menu/Funcionario.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
        <form action="IngresarCiudadano_Adm.jsp">
            <input type="submit" name="nuevo" value="Insertar" id="nuevo" class="btn btn-outline-dark" >
  	</form>
    <h3 class="display-4">Ciudadano</h3>
    	        <%
                ArrayList<GSCiudadanoAdmin> dat = new ArrayList<>();
                Ciudadano co = new Ciudadano();
                dat=co.Consultar();
                GSCiudadanoAdmin cgsc= new GSCiudadanoAdmin();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
            <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><%=cgsc.getNom()%></th>
                    </thead>
                    </tr>
                    </table>
                </div>
                
                <div class="caja2">
                    <table class="table">
                        <tr>
                        <th>Cedula</th>
                        <th><%=cgsc.getCed()%></th>
                        </tr>
                        <tr>
                        <th>Nombre</th>
                        <th><%=cgsc.getNom()%></th>
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
                        <th>Correo</th>
                        <th><%=cgsc.getCor()%></th>
                        </tr>
                    
                <form method='POST' action=''>
                    <input type='hidden' name='cod' value=''>
                    <th><input type='submit' name='modificar' value='Modificar' class='btn btn-info' ></th>
                </form>
            
                <form action="../../ServletCiudadano">
                    <input type="hidden" name="cedula" value="<%=cgsc.getCed()%>">
                    <th><input type="submit" name="eliminar" value="Eliminar" class="btn btn-danger"></th>
                </form>
                
                </table>
            </div>
            </div>
            <%}%>
    </body>
</html>
