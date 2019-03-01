<%-- 
    Document   : Modificar_Eliminar_Funcionario
    Created on : 23/11/2018, 08:48:47 AM
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
    </head>
    <body>
        <h1>Funcionario</h1>
        <table>
            <tr>
                <th> Cedula </th>
                <th> Telefono </th>
                <th> Nombre </th>
                <th> Correo </th>
                <th> Clave </th>
                <th> Rol </th>
                
            </tr>
            <%
            ArrayList<GSFuncionario> dat = new ArrayList<>();
                Funcionario co = new Funcionario();
                dat=co.Consultar();
                GSFuncionario cgsc= new GSFuncionario();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                        
            %>
            <BR>
            <form action="../../ServletFuncionario">
            <tr>
                <th><input type="text" name="cedula" size="20" value="<%=cgsc.getCedulafuncionario()%>" ></th>
                <th><input type="text" name="telefono" size="20" value="<%=cgsc.getTelefonofuncionario()%>" ></th>
                <th><input type="text" name="nombre" size="20" value="<%=cgsc.getNombrefuncionario()%>" ></th>
                <th><input type="text" name="correo" size="20" value="<%=cgsc.getCorreofuncionario()%>"</th>
                <th><input type="text" name="clave" size="20" value="<%=cgsc.getClavefuncionario()%>"</th>
                <th><input type="text" name="rol" size="20" value="<%=cgsc.getRolfuncionario()%>"</th>
                <th><input type="submit" name="botmodfun" size="10" value="Modificar"</th>
                <th><input type="submit" name="botelifun" size="10" value="Eliminar"</th>
            </tr>
            </form>
                <%}%>
            </table>
    </body>
</html>
