<%@page import="Modelo.Administrador.Evento.Evento"%>
<%@page import="Modelo.Administrador.Evento.GSEventoAdmin"%>
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
        <form action="Consultar_Evento.jsp">
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
                ArrayList<GSEventoAdmin> dat = new ArrayList<>();
                Evento co = new Evento();
                dat=co.Consultar1(dat1);
                GSEventoAdmin cgsc= new GSEventoAdmin();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
                    
                    <input type='hidden' class='cod' value='<%=dat1%>' name="cod"> 
                    <p>Fecha</p><input type='text' class='fec'  value='<%=cgsc.getFec()%>' name="fec"> 
                    <p>Lugar</p><input type='text' class='lug'  value='<%=cgsc.getLug()%>' name="lug"> 
                    <p>Duracion</p><input type='text' class='dur'  value='<%=cgsc.getDura()%>' name="dur"> 
                    <p>Descripcion</p><input type='text' class='des'  value='<%=cgsc.getDesc()%>' name="des"> 
                    <input type='submit' class='btn btn-info' value='Modificar' name="BTN">
                
            <%}%>
    </body>
</html>
