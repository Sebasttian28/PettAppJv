<%@page import="Modelo.Usuario.GSUsuario"%>
<%@page import="Modelo.Usuario.Usuario"%>
<%@page import="Modelo.Administrador.Admin.Admin"%>
<%@page import="Modelo.Administrador.Admin.GSAdminAdmin"%>
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
    
        <form action="IngresarAdminAdmin.jsp">
            <input type="submit" name="nuevo" value="Insertar" class="btn btn-outline-dark" id="nuevo">
  	</form>

	<form action="../Menu/Administrador.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
        
    <h3 class="display-4">Administrador</h3>
    	        <%
                ArrayList<GSUsuario> dat = new ArrayList<>();
                Usuario co = new Usuario();
                dat=co.ConsultarA();
                GSUsuario cgsc= new GSUsuario();
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
                        <th colspan='2'><img src="../../Uploads/FotosUsuarios/<%=cgsc.getFot()%>" width="200" height="200"></th>
                        </tr>
                        <tr>
                        <th>Usuario</th>
                        <th><%=cgsc.getNom()%></th>
                        </tr>
                        <tr>
                        <th>Clave</th>
                        <th><%=cgsc.getCla()%></th>
                        </tr>
                        <tr>
                             
                    
                <form method='POST' action=''>
                    <input type='hidden' name='nomA' value='<%=cgsc.getNom()%>'>
                    <th><input type='submit' name='modificar' value='Modificar' class='btn btn-info' ></th>
                </form>
            
                <form method='POST' action=''>
                    <input type='hidden' name='codfu' value=''>
                    <th><input type='submit' name='eliminar' value='Eliminar' class='btn btn-danger'></th>
                </form>
                
                
                </table>
<!Enviar datos>                
               
<!Enviar datos>              
              
            </table>
            </div>
            </div>
            <%}%>
            <%
                if (request.getParameter("modificar")!=null){
                        HttpSession htt=request.getSession();
                        String naom=request.getParameter("nomA");
                        String dato= new String(naom);
                        htt.setAttribute("nom", dato);
                        response.sendRedirect("Modificar_Admin.jsp");
                }
            %>
    </body>
</html>
