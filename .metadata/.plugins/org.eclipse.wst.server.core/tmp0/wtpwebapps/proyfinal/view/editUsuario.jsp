<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Editar Usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body class=" bg-dark">
	<%
	String id=request.getParameter("id");
	String user=new String();
	String pass=new String();
	try {
		ConexionDB con=new ConexionDB();
		Statement st=con.conectar();
		ResultSet rs=st.executeQuery("SELECT * FROM usuarios WHERE idusuario="+id);
		
		if(rs.next()) {
			user=rs.getString("usuario");
			pass=rs.getString("clave");
			
		} else {
			response.sendRedirect("listadoUsuarios.jsp?mensaje=No%20existe%20el%usuario");
		}
		
	} catch (Exception e) {
		response.sendRedirect("listadoUsuarios.jsp?mensaje=Hubo%20un%20problema%contactes�%20con%20el%20desarrollador");
		
	}
	
	%>	  
  
  	<jsp:include page="menu.jsp" />
  	
	<div class="container w-25 mt-5  pt-2 pb-2 bg-white ">
    	<div class="border  ">
			<div class="text-center fs-3 my-4 text-decoration-underline">Modificar Usuario</div>
			
			
			<div class="d-flex justify-content-center text-center">
				<form action="../controller/updUsuario.jsp" method="post">
					<input type="hidden" name="id" value="<% out.print(id); %>">
					<label for="user" class="text-decoration-underline">Usuario actual :</label>
					<input type="email" name="user" id="user" onkeyup="validarUsu()" value="<% out.print(user); %>" class="form-control mb-3" placeholder="usuario" required>
					<label for="pass" class="text-decoration-underline">contrase�a actual:</label>
					<input type="text" name="pass" id="pass" onkeyup="showFort()" value="<% out.print(pass); %>" class="form-control mb-3" placeholder="contrase�a" required>
					<label for="repPass" class="text-decoration-underline">reingrese contrase�a :</label>
					<input type="password" name="repPass" id="repPass" value="<% out.print(pass); %>" onkeyup="compararPass()" class="form-control mb-3" placeholder="reingrese contrase�a para comparar" required>
					<input type="submit" value="Enviar" class="btn btn-outline-primary text-dark mb-3">
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
	