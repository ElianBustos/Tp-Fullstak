<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agregar usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body class="bg-dark">
  	<jsp:include page="menu.jsp" />
     <div class="container w-25 text-center mt-5 bg-body-secondary">
    	<div class="border  m-2">
			<div class="text-center fs-3 my-4 text-decoration-underline">Ingrese correo y contraseña del Usuario</div>
			<div class="d-flex justify-content-center">
				<form action="../controller/addUsuario.jsp" method="post">
				    <label for="user" class="text-decoration-underline">Usuario:</label>
					<input type="email" name="user" id="user" onkeyup="validarUsu()" class="form-control mb-3" placeholder="usuario" required>
					<label for="user" class="text-decoration-underline">Contraseña:</label>
					<input type="password" name="pass" id="pass" onkeyup="showFort()" class="form-control mb-3" placeholder="contraseña" required>
					<label for="user" class="text-decoration-underline">Reingrese la contraseña:</label>
					<input type="password" name="repPass" id="repPass" onkeyup="compararPass()" class="form-control mb-3" placeholder="reingrese contraseña" required>
					 
					 <div class=" text-center">
					 <input type="submit" id="btnEnviar"  class="btn btn-outline-success text-dark"  value="Agregar">
					 </div>
			        
				</form>
			</div>
			<div id="mensaje" ></div>
	    	<% 
	    		String mensaje=request.getParameter("mensaje");
	    		if(mensaje!=null){
	    			out.println("<div class='bg-danger text-center my-1 p-2'>");
	    			out.println(mensaje);	
	    			out.println("</div>");
	    		}
	    		
	    	%>				
    	</div>
		
	</div>
	
	
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="js/registro.js" ></script>
  </body>
</html>
	