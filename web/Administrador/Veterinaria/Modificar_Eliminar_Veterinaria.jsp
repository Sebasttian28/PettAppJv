<%-- 
    Document   : Modificar_Eliminar_Veterinaria
    Created on : 23/11/2018, 09:03:15 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Veterinaria</title>
    </head>
    <body>
        <h1>Veterinaria</h1>
        <table>
            <tr>
                <th> Nit </th>
                <th> Telefono </th>
                <th> Nombre </th>
                <th> Direccion </th>
                <th> Clave </th>
                <th> Rol </th>
                
            </tr>
            <%
            ArrayList<GSVeterinaria> dat = new ArrayList<>();
                Veterinaria co = new Veterinaria();
                dat=co.Consultar();
                GSVeterinaria cgsc= new GSVeterinaria();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                        
            %>
            <BR>
            <form action="../../ServletVeterinaria">
            <tr>
                <th><input type="text" name="cedula" size="20" value="<%=cgsc.getNitveterinaria()%>" ></th>
                <th><input type="text" name="telefono" size="20" value="<%=cgsc.getTelefonoveterinaria()%>" ></th>
                <th><input type="text" name="nombre" size="20" value="<%=cgsc.getNombreveterinaria()%>" ></th>
                <th><input type="text" name="correo" size="20" value="<%=cgsc.getDireccionveterinaria()%>"</th>
                <th><input type="text" name="clave" size="20" value="<%=cgsc.getClaveveterinaria()%>"</th>
                <th><input type="text" name="rol" size="20" value="<%=cgsc.getRolveterinaria()%>"</th>
                <th><input type="submit" name="botmodvet" size="10" value="Modificar"</th>
                <th><input type="submit" name="botelivet" size="10" value="Eliminar"</th>
            </tr>
            </form>
                <%}%>
            </table>
    </body>
</html>
