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
            String dat7=request.getParameter("res7");
            String dat8=request.getParameter("res8");
            String dat9=request.getParameter("res9");
            String dat10=request.getParameter("res10");
            String dat11=request.getParameter("res11");
            String dat12=request.getParameter("res12");
        %>
        <%--<p>ani</p><%=ani%>
        <p>res1</p><%=dat1%>
        <p>res2</p><%=dat2%>
        <p>res3</p><%=dat3%>
        <p>res4</p><%=dat4%>
        <p>res5</p><%=dat5%>
        <p>res6</p><%=dat6%>
        <p>res7</p><%=dat7%>
        <p>res8</p><%=dat8%>
        <p>res9</p><%=dat9%>
        <p>res10</p><%=dat10%>
        <p>res11</p><%=dat11%>
        <p>res12</p><%=dat12%>--%>
        
    <div class="container-fluid">
	<div class="row">
            <div id="Preguntas">
		<div class="col-md-12">
                    <h1>Encuesta</h1><br>
                        <form action="Pagina4.jsp" method="Post">
			<div class="row">
				<div class="col-md-6">
                                    <fieldset class="form-group">
                                       <div class="row">
                                        <fieldset>
                                            <legend>13. ¿Comprende que al sacar a su mascota a pasear debe recoger las excretas y disponerlas adecuadamente? <abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res13" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res13" id="r2" value="0"><label for="r2">No</label>
					          </label>
					        </div>
					      </div>
                                        </fieldset>
                                    <fieldset>
                                            <legend>14. ¿Se compromete a tener un esquema de vacunación de la mascota actualizado?<abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res14" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res14" id="r2" value="0"><label for="r2">No</label>
					          </label>
					        </div>
					      </div>
                                    </fieldset> 
                                    <fieldset>
                                            <legend>15. ¿Se compromete a tener un esquema de desparasitación de la mascota actualizado?¿En la actualidad tiene mascotas?<abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res15" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res15" id="r2" value="0"><label for="r2">No</label>
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
                                            <legend>16. ¿Comprende que mediante la Ley 1774 de 2016, se puede llegar a sancionar he incluso penalizar el maltrato animal? <abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res16" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res16" id="r2" value="0"><label for="r2">No</label>
					          </label>
					        </div>
					      </div>
                                        </fieldset>
                                    <fieldset>
                                            <legend>17. ¿Comprende que la mascota que está dispuesto a adoptar es una responsabilidad que asume por el resto de la vida del animal? <abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res17" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res17" id="r2" value="0"><label for="r2">No</label>
					          </label>
					        </div>
					      </div>
                                    </fieldset> 
                                    <fieldset>
                                            <legend>18. ¿En caso de enfermarse la mascota está dispuesto a brindar atención médica veterinaria y asumir los costos que esta requiera?<abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res18" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res18" id="r2" value="0"><label for="r2">Naur</label>
					          </label>
					        </div>
					      </div>
                                            </div>
                                    </fieldset>
                                    </fieldset>
                                </div>
			</div>
                    <input type='submit' name='sigui3' value='Siguiente' class='btn btn-primary active btn-sm'>
                    <input type='hidden' name='res1' value='<%=dat1%>'>
                    <input type='hidden' name='res2' value='<%=dat2%>'>
                    <input type='hidden' name='res3' value='<%=dat3%>'>
                    <input type='hidden' name='res4' value='<%=dat4%>'>
                    <input type='hidden' name='res5' value='<%=dat5%>'>
                    <input type='hidden' name='res6' value='<%=dat6%>'>
                    <input type='hidden' name='res7' value='<%=dat7%>'>
                    <input type='hidden' name='res8' value='<%=dat8%>'>
                    <input type='hidden' name='res9' value='<%=dat9%>'>
                    <input type='hidden' name='res10' value='<%=dat10%>'>
                    <input type='hidden' name='res11' value='<%=dat11%>'>
                    <input type='hidden' name='res12' value='<%=dat12%>'>
                    <%
                        if (request.getParameter("sigui3")!=null) {
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