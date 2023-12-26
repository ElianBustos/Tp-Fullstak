<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body class="bg-dark">
  	<jsp:include page="menu.jsp" />
  	
  
    <div class="container  w-50 bg-body-secondary">
    	<div class="text-center fs-3 my-4 text-decoration-underline">Lista de Usuarios</div>
    	
    	 
    
    	
    		<div class="d-flex justify-content-center mb-4">
		    	<button type="button" class=" btn btn-outline-info text-dark " data-bs-toggle="modal" data-bs-target="#addModal">
				Agregar usuario
		 		</button>
 		
    	</div>
    	<% 
    		String mensaje=request.getParameter("mensaje");
    		if(mensaje!=null){
    			out.println("<div class='bg-danger text-center my-1 p-2'>");
    			out.println(mensaje);	
    			out.println("</div>");
    		}
    		
    	%>	    	
    	
	
    	
		<table class="table table-striped text-center border border-dark-subtle table-bordered">
		  <thead class="table-warning">
		    <tr>
		      <th scope="col">#ID</th>
		      <th scope="col">Usuario</th>
		      <th scope="col">Contrase�a</th>
		      <th scope="col">Operaciones</th>
		    </tr>
		  </thead>
		  <tbody class="">
		    <% 
		    
		    try {
			    ConexionDB con=new ConexionDB();
			    Statement st=con.conectar();
			    ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
			    while(rs.next()) {
			    	out.println("<tr>");
			    	
			    	out.println("<td>");
			    	Integer id=rs.getInt("idusuario");
			    	out.println(id);
			    	out.println("</td>");
			    	
			    	out.println("<td>");
			    	String user=rs.getString("usuario");
			    	out.println(user);
			    	out.println("</td>");		    	
			    	
			    	out.println("<td>");
			    	out.println(rs.getString("clave"));
			    	out.println("</td>");		
			    	
			    	out.println("<td>");
			    	out.println("<a href='editUsuario.jsp?id="+id+"'><i class='bi bi-pencil-fill m-1'></i></a>");
			    	out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#delModal' idUser='"+id+"' user='"+user+"'><i class='bi bi-trash-fill m-1'></i></a>");
			    	out.println("</td>");				    	
			    	
			    	out.println("</tr>");
			    }		    	
		    } catch (Exception e) {
		    	out.println("Error al cargar usuarios");
		    }
		    
		    
		    
		    %>
		  </tbody>
		</table>    	
		
		
		
	</div>
	
	<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Ingrese al Usuario</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      
		      <div class="modal-body text-center">
		        
				<div class="border rounded m-2">
				
					<div class="d-flex justify-content-center">
						<form action="../controller/addUsuario.jsp" method="post">
							 <label for="user">Usuario:</label>
					<input type="email" name="user" id="user" onkeyup="validarUsu()" class="form-control mb-3" placeholder="usuario" required>
					<label for="user">Contrase�a:</label>
					<input type="password" name="pass" id="pass" onkeyup="showFort()" class="form-control mb-3" placeholder="contrase�a" required>
					<label for="user">Reingrese la contrase�a:</label>
					<input type="password" name="repPass" id="repPass" onkeyup="compararPass()" class="form-control mb-3" placeholder="reingrese contrase�a" required>
				
				
		
		     <div class="modal-footer">
		           <div class="modal-footer ">
			             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
			        	 <input type="submit"  class="btn btn-success" value="Agregar">
			      </div>
		      </div>
		        
						
						</form>
					</div>
					
					<div id="mensaje" ></div>
			    					
		    	</div>
		        
		      </div>
		      
	      
	    </div>
	  </div>
	</div>	
	
	
	
	
	
	
	
	
	
	<div class="modal fade" id="delModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar Usuario</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <form action="../controller/delUsuario.jsp" method="post">
	      		<input type="hidden" name="idUser" id="idUser">
	      
		      <div class="modal-body text-center">
		        
		          <div class="mb-3">
		            <label for="recipient-name" class="col-form-label">�Desea eliminar el usuario?</label>
		            <div id="dataUser" class="text-danger"></div>
		            
		          </div>
		        
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
		        <input type="submit" value="Eliminar" class="btn btn-primary" >
		      </div>
	      </form>
	    </div>
	  </div>
	</div>		
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    <script src="js/listUsu.js"></script>
  </body>
</html>
	