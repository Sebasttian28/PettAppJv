<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Preguntas</title>
    <link rel="stylesheet" href="Estilos.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>

  </head>
  <body>
      
        <%
            HttpSession ht = request.getSession();
            String datd=(String)ht.getAttribute("nom1");
            Integer ani=(Integer)ht.getAttribute("ani1");
        %>
        <%--<p>usu</p><%=datd%>--%>
        <%
            String dat1=request.getParameter("res1");
            String dat2=request.getParameter("res2");
            String dat3=request.getParameter("res3");
            String dat4=request.getParameter("res4");
            String dat5=request.getParameter("res5");
            String dat6=request.getParameter("res6");
        %>
        
        <%--
        <p>ani</p><%=ani%>
        <p>res1</p><%=dat1%>
        <p>res2</p><%=dat2%>
        <p>res3</p><%=dat3%>
        <p>res4</p><%=dat4%>
        <p>res5</p><%=dat5%>
        <p>res6</p><%=dat6%>
        --%>
        
    <div class="container-fluid">
	<div class="row">
            <div id="Preguntas">
		<div class="col-md-12">
                    <h1>Encuesta</h1><br>
                        <form action="Pagina3.jsp" method="Post">
			<div class="row">
				<div class="col-md-6">
                                    <fieldset class="form-group">
                                       <div class="row">
                                        <fieldset>
                                            <legend>7. ¿En el núcleo familiar  alguna persona es alérgica a los animales?<abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res7" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res7" id="r2" value="0"><label for="r2">No</label>
					          </label>
					        </div>
					      </div>
                                        </fieldset>
                                    <fieldset>
                                            <legend>8. ¿Reconoce que en caso de mudarse de la propiedad actual, debe llevarse con usted a la mascota? <abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res8" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res8" id="r2" value="0"><label for="r2">No</label>
					          </label>
					        </div>
					      </div>
                                    </fieldset> 
                                    <fieldset>
                                            <legend>9. ¿Conoce los gastos económicos que implica tener una mascota? <abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res9" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res9" id="r2" value="0"><label for="r2">No</label>
					          </label>
					        </div>
                                            </div>
					    </div>
                                    </fieldset>
                                    </fieldset>
                                </div>
                           <div class="col-md-6">
                                    <fieldset class="form-group">
                                       <div class="row">
                                        <fieldset>
                                            <legend>10. ¿Está dispuesto a recibir capacitación sobre tenencia responsable de la mascota? <abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res10" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res10" id="r2" value="0"><label for="r2">No</label>
					          </label>
					        </div>
					      </div>
                                        </fieldset>
                                    <fieldset>
                                            <legend>11. ¿Comprende que la mascota tiene un periodo de adaptación y debe ser paciente mientras esto ocurre? <abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res11" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res11" id="r2" value="0"><label for="r2">No</label>
					          </label>
					        </div>
					      </div>
                                    </fieldset> 
                                    <fieldset>
                                            <legend>12. ¿Se compromete a garantizar el bienestar general de la mascota? <abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res12" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res12" id="r2" value="0"><label for="r2">No</label>
					          </label>
					        </div>
					      </div>
                                            </div>
                                    </fieldset>
                                    </fieldset>
                                </div>
			</div>
                    <input type='submit' name='sigui2' value='Siguiente' class='btn btn-primary active btn-sm'>
                        <input type='hidden' name='res1' value='<%=dat1%>'>
                        <input type='hidden' name='res2' value='<%=dat2%>'>
                        <input type='hidden' name='res3' value='<%=dat3%>'>
                        <input type='hidden' name='res4' value='<%=dat4%>'>
                        <input type='hidden' name='res5' value='<%=dat5%>'>
                        <input type='hidden' name='res6' value='<%=dat6%>'>
                        <%
                        if (request.getParameter("sigui2")!=null) {
                        HttpSession htt=request.getSession();
                        String dato= new String(datd);
                        htt.setAttribute("nom1", dato);
                        Integer dato3= new Integer(ani);
                        htt.setAttribute("ani1", dato3);
                        response.sendRedirect("Pagina3.jsp");
                        }
                        %>
                    </form>
                    <br>
                    <input type='submit' name='volve' value='Volver' class='btn btn-danger btn-sm'>
                </div>
	</div>
</div>
</body>
</html>