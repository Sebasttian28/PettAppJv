<%-- 
    Document   : Consultar_Veterinaria
    Created on : 23/11/2018, 09:02:09 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Veterinaria.Veterinaria"%>
<%@page import="Modelo.Administrador.Veterinaria.GSVeterinaria"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Veterinaria</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloVeterinaria.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>
    <body>
	<form action="../Menu/Funcionario.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
        <form action="Ingresar_Veterinaria.jsp">
            <input type="submit" name="nuevo" value="Insertar" class="btn btn-outline-dark" id="nuevo">
  	</form>
        
    <h3 class="display-4">Veterinaria</h3>
    	        <%
                ArrayList<GSVeterinaria> dat = new ArrayList<>();
                Veterinaria co = new Veterinaria();
                dat=co.Consultar();
                GSVeterinaria cgsc= new GSVeterinaria();
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
                        <th>Nit</th>
                        <th><%=cgsc.getNit()%></th>
                        </tr>
                        <tr>
                        <th>Telefono</th>
                        <th><%=cgsc.getTel()%></th>
                        </tr>
                        <tr>
                        <th>Nombre</th>            
                        <th><%=cgsc.getNom()%></th>
                        </tr>
                        <tr>
                        <th>Direccion</th>
                        <th><%=cgsc.getDir()%></th>
                        </tr>
                    
                <form method='POST' action=''>
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
    </body>
</html>
