<%-- 
    Document   : Consultar_Mascota
    Created on : 23/11/2018, 08:51:05 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Mascota.Mascota"%>
<%@page import="Modelo.Administrador.Mascota.GSMascotaAdmin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <title>Mascota</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloIngresoMascota.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>
    <body>
    
        <form action="IngresarMascota_Adm.jsp">
            <input type="submit" name="nuevo" value="Insertar" class="btn btn-outline-dark" id="nuevo">
  	</form>

	<form action="../Menu/Administrador.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
        
    <input type="submit" name="cerrar" value="Cerrar Sesion" class="btn btn-light" id="sal">
    <h3 class="display-4">Mascota</h3>
    	        <%
                ArrayList<GSMascotaAdmin> dat = new ArrayList<>();
                Mascota co = new Mascota();
                dat=co.Consultar();
                GSMascotaAdmin cgsc= new GSMascotaAdmin();
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
                        <th>Codigo</th>
                        <th><%=cgsc.getCod()%></th>
                        </tr>
                        <tr>
                        <th>Nombre</th>
                        <th><%=cgsc.getNom()%></th>
                        </tr>
                        <tr>
                        <tr>
                        <th>Descendencia</th>
                        <th><%=cgsc.getDes()%></th>
                        </tr>
                        <tr>
                        <th>Estado</th>
                        <th><%=cgsc.getEst()%></th>
                        </tr>
                        <tr>
                        <th>Tipo</th>
                        <th><%=cgsc.getTip()%></th>
                        </tr>
                        <tr>
                        <th>Edad</th>
                        <th><%=cgsc.getEda()%></th>
                        </tr>
                        <tr>
                        <th>Raza</th>
                        <th><%=cgsc.getRaz()%></th>
                        </tr>
                        <tr>
                        <th>Cedula</th>
                        <th><%=cgsc.getCed()%></th>
                        </tr>
                        <th>Foto</th>
                        <th><img src="../<%=cgsc.getFot()%>" width="100" height="100"></th>
                        </tr>
                    
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
