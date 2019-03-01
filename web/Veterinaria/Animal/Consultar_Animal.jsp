<%-- 
    Document   : Consultar_Animal
    Created on : 23/11/2018, 08:29:03 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Animal.Animal"%>
<%@page import="Modelo.Administrador.Animal.GSAnimalAdmin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <title>Animal</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../../../PettAppJ/Animal/CSS/Estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>
    <body>
       
	<form action="../Login/loginV.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
    <input type="submit" name="cerrar" value="Cerrar Sesion" class="btn btn-light" id="sal">
    <h3 class="display-4">Animal</h3>
    	        <%
                ArrayList<GSAnimalAdmin> dat = new ArrayList<>();
                Animal co = new Animal();
                dat=co.Consultar();
                GSAnimalAdmin cgsc= new GSAnimalAdmin();
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
                        <th><img src="../../Uploads/FotosAnimal/<%=cgsc.getTam()%>" width="100" height="100"></th>
                        </tr>
                        <tr>
                        <th>Codigo</th>
                        <th><%=cgsc.getCod()%></th>
                        </tr>
                        <tr>
                        <th>Nombre</th>
                        <th><%=cgsc.getNom()%></th>
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

                        <th>Tamaño</th>
                        <th><%=cgsc.getGen()%></th>
                        </tr>
                        <th>Genero</th>
                        <th><%=cgsc.getCol()%></th>
                        <tr>
                        <th>Color</th>
                        <th><%=cgsc.getFot()%></th>
                        </tr> 
                        
                        
              
                
                
                </table>
            </div>
            </div>
            <%}%>
    </body>
</html>

