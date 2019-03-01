<%-- 
    Document   : Modificar_Comentario
    Created on : 5/02/2019, 08:21:28 PM
    Author     : Edwin Abril
--%>

<%@page import="Modelo.Administrador.Comentarios.Comentarios"%>
<%@page import="Modelo.Administrador.Comentarios.GSComentarios"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/Actualizar.js"></script>
        <title>JSP Page</title>
    </head>
    <body id="fondox">
        <form action="Consultar_Comentario.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
        </form>
    <div id="padre">
        <div id="modificar" class="form-group">
        <%
            HttpSession ht = request.getSession();
            
            String dat1=(String)ht.getAttribute("nom");
        %>
        <p>Codigo</p><%=dat1%>
        <%
                ArrayList<GSComentarios> dat = new ArrayList<>();
                Comentarios co = new Comentarios();
                dat=co.Consultar1(dat1);
                GSComentarios cgsc= new GSComentarios();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
                    
                    <input type='hidden' class='cod' value='<%=dat1%>' name="cod"> 
                    <p>Fecha</p><input type='text' class='fec'  value='<%=cgsc.getFec()%>' name="fec"> 
                    <p>Mensaje</p><input type='text' class='cue'  value='<%=cgsc.getCue()%>' name="cue"> 
                    <input type='hidden' class='ado' value='<%=cgsc.getAdo()%>' name="ado">
                    <p>Adopcion</p><%=cgsc.getAdo()%> 
                    <input type='submit' class='btn btn-info' value='Modificar' name="BTN">
                
            <%}%>
    </body>
</html>
