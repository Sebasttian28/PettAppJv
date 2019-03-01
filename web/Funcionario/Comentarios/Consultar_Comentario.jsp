<%-- 
    Document   : Consultar_Comentario
    Created on : 23/11/2018, 08:34:03 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Comentarios</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloIngresoComentario.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>
    <body>
        <form action="">
            <input type="submit" name="nuevo" value="Insertar" class="btn btn-outline-dark" id="nuevo">
  	</form>

	<form action="../Menu/Administrador.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
    <input type="submit" name="cerrar" value="Cerrar Sesion" class="btn btn-light" id="sal">
    <h3 class="display-4">Comentarios</h3>
    	        <%
                ArrayList<GSComentarios> dat = new ArrayList<>();
                Comentarios co = new Comentarios();
                dat=co.Consultar();
                GSComentarios cgsc= new GSComentarios();
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
                        <th>Fecha</th>
                        <th><%=cgsc.getFec()%></th>
                        </tr>
                        <tr>
                        <th>Cuerpo</th>            
                        <th><%=cgsc.getCue()%></th>
                        </tr>
                        <tr>
                        <th>Adopcion</th>
                        <th><%=cgsc.getAdo()%></th>
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
            </div>
            <%}%>
    </body>
</html>

