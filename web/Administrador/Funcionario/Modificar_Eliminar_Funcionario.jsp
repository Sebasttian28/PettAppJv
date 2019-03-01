<%@page import="Modelo.Administrador.Funcionario.Funcionario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Administrador.Funcionario.GSFuncionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/EstiloModificar.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <title>Funcionario</title>
    </head>
    <body id="fondox">
        <form action="Consultar_Funcionarios.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
        </form>
        <div id="padre">
        <div id="modificar" class="form-group">
        <h1>Funcionario</h1>
        <%
        String ced=request.getParameter("cod");
        %>
        <p>Cedula</p><p><%=ced%></p>
        <%
            ArrayList<GSFuncionario> dat = new ArrayList<>();
                Funcionario co = new Funcionario();
                dat=co.Consultar_f(ced);
                GSFuncionario cgsc= new GSFuncionario();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                        
            %>
        
            <form action="../../ServletFuncionario">
                <input type='hidden' value='<%=cgsc.getCed()%>' name="ced"> 
                <p>Telefono<input type='text' value='<%=cgsc.getTel()%>' name="tel" class="form-control"></p> 
                <p>Nombre<input type='text'  value='<%=cgsc.getNom()%>' name="nom" class="form-control"></p> 
                <p>Correo<input type='text' value='<%=cgsc.getCor()%>' name="cor" class="form-control"></p> 
                <p>Dependencia<input type='text' value='<%=cgsc.getDep()%>' name="dep" class="form-control"></p> 
                <input type='submit' class='btn btn-info' value='Modificar' name="BTN">
            </form>
                <%}%>
    </body>
</html>
