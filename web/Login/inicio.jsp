<%-- 
    Document   : registro
    Created on : 22-ene-2019, 18:46:07
    Author     : Edwin Abril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device−width, initial−scale=1.0" />
	<title>PetApp</title>
        <link rel="stylesheet" href="EstiloInicio.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">  
</head>
<body background="Imagenes/Fondo.jpg">
       <form action="login.jsp">
  <input type="submit" name="volver" value="Inicio" class="btn btn-outline-dark" id="vol">
</form>

	<div id=contenedor>
		<h1>PetApp</h1>
	
	<div id="Ingreso" src="Imagenes/user">
		<form action="../ServletLogin" method="Post"  id="Login">
			<center>
			<h1>Ingresar</h1>
			<input type="text" name="Usuario" value="" placeholder="Usuario" required="">
			<input type="password" name="Clave" value="" placeholder="Clave" required="">
			<br>
			<br>
			<input type="submit" name="Entrar" value="Iniciar Sesion" class="btn btn-primary" >
			</center>
		</form>
	<%
                
            %>	
	</div>
		<div><br>
			<center>
			<a href="Registrarse.jsp" target="cargar" name="" class="btn btn-outline-success">Registrarse </a>
			<br><br>
			</div>
				<center>
				<iframe name="cargar" id="Registrar">
				</iframe>
				</center>
		<footer >
			Todos los derechos reservados
		</footer>
		</center>
	</div>
	
</body>
</html>