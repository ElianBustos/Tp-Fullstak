<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>

  <div class=" mt-2 bg-body-secondary">




		<table class="table table-striped text-center  border border-dark-subtle table-bordered">
		  <thead class="table-warning">
		    <tr>
		      <th scope="col">#ID localidad</th>
		      <th scope="col">Nombre</th>
		      <th scope="col">ID provincia</th>
		     
		    </tr>
		  </thead>
		  <tbody class="">
		    <% 
		    
		    try {
			    ConexionDB con=new ConexionDB();
			    Statement st=con.conectar();
			    ResultSet rs=st.executeQuery("SELECT * FROM localidades");
			    while(rs.next()) {
			    	out.println("<tr>");
			    	
			    	out.println("<td>");
			    	Integer idloc=rs.getInt("idlocalidad");
			    	out.println(idloc);
			    	out.println("</td>");
			    	
			    	out.println("<td>");
			    	String user=rs.getString("nombre");
			    	out.println(user);
			    	out.println("</td>");		    	
			    	
			    	out.println("<td>");
			    	Integer idPro=rs.getInt("idProvincia");
			    	out.println(idPro);
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
