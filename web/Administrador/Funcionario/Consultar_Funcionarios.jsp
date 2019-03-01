<%-- 
    Document   : Consultar_Funcionario
    Created on : 23/11/2018, 08:48:23 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Funcionario.Funcionario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Administrador.Funcionario.GSFuncionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Funcionario</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/Estilos.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>
    <body>
        <form action="../Funcionario/Ingresar_Funcionarios.jsp">
            <input type="submit" name="nuevo" value="Insertar" class="btn btn-outline-dark" id="nuevo">
  	</form>

    
	<form action="../Menu/Administrador.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
    <h3 class="display-4">Funcionarios</h3>
    	        <%
                ArrayList<GSFuncionario> dat = new ArrayList<>();
                Funcionario co = new Funcionario();
                dat=co.Consultar();
                GSFuncionario cgsc= new GSFuncionario();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
            
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
                        <th>Nombre</th>
                        <th><%=cgsc.getNom()%></th>
                        </tr>
                        <tr>
                        <th>Cedula</th>
                        <th><%=cgsc.getCed()%></th>
                        </tr>
                        <tr>
                        <th>Telefono</th>            
                        <th><%=cgsc.getTel()%></th>
                        </tr>
                        <tr>
                        <th>Correo</th>
                        <th><%=cgsc.getCor()%></th>
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
                
                
                </table>
            </div>
            <%}%>
    </body>
</html>
