<%@page import="Modelo.Usuario.Usuario"%>
<%@page import="Modelo.Usuario.GSUsuario"%>
<%@page import="Modelo.Administrador.Admin.GSAdminAdmin"%>
<%@page import="Modelo.Administrador.Admin.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/EstiloModificar.css">
        <script src="JQ/jquery-3.3.1.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body id="fondox">
        <form action="Consultar_Funcionarios.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
        </form>
    <div id="padre">
        <div id="modificar" class="form-group">
            <%
            String dat1=request.getParameter("cod");
            %>
        <p>Usuario</p><%=dat1%>
        
        <%
                ArrayList<GSUsuario> dat = new ArrayList<>();
                Usuario co = new Usuario();
                dat=co.Consultar1(dat1);
                GSUsuario cgsc= new GSUsuario();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
                    <form action='../../ServletModificarAdmin' method='Post' enctype='multipart/form-data'>
                    <p>Foto</p><label class='botonModi'>
                    <p><img src='../../Uploads/FotosUsuarios/<%=cgsc.getFot()%>' style='width:150px;height:150px;border-radius: 150px;' id='fotomod'>
                    <input type='file' class='file' name='fo' accept='image/jpeg,image/png'></p>
                    <img src='Imagenes/Icono.png' width='40' heigth='40'></label>
                    <input type='hidden' name='fotosi' value='<%=cgsc.getFot()%>'>   
                    <input type='hidden' class='usu' value='<%=cgsc.getNom()%>' name="usu"> 
                    <p>Clave</p><input type='password' class='clave'  value='<%=cgsc.getCla()%>' name="clave"> 
                    <input type='submit' class='btn btn-info' value='Modificar' name="BTNF">
                </form>
                    
                    
            <%}%>
            </div>
        </div>
    </body>
</html>

