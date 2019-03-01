<%@page import="Modelo.Preguntas.Respu"%>
<%@page import="Modelo.Preguntas.GSRespuestaFin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <title>Administrador</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstilosIngresoAdmin.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>
    <body>
    <h3 class="display-4">Respu</h3>
    	        <%
                ArrayList<GSRespuestaFin> dat = new ArrayList<>();
                Respu co = new Respu();
                String as="1001263254";
                dat=co.Consultar(as);
                GSRespuestaFin cgsc= new GSRespuestaFin();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
                <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><%=cgsc.getCed()%></th>
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
                        <th>Respuestas</th>
                        <th><%=cgsc.getRe1()%></th>
                        </tr>
                        <tr>
                             
                    
                <form method='POST' action=''>
                    <th><input type='submit' name='modificar' value='Modificar' class='btn btn-info' ></th>
                </form>
            
                <form method='POST' action=''>
                    <th><input type='submit' name='eliminar' value='Eliminar' class='btn btn-danger'></th>
                </form>
                
                
                </table>            
              
            </table>
            </div>
            </div>
            <%}%>
    </body>
</html>
