
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>

    <div class="  bg-body-secondary">
    	
    	
		<table class="table table-striped text-center border border-dark-subtle table-bordered">
		  <thead class="table-warning">
		    <tr>
		      <th scope="col">#ID provincia</th>
		      <th scope="col">Nombre</th>
		     
		    </tr>
		  </thead>
		  <tbody class="">
		    <% 
		    
		    try {
			    ConexionDB con=new ConexionDB();
			    Statement st=con.conectar();
			    ResultSet rs=st.executeQuery("SELECT * FROM provincias");
			    while(rs.next()) {
			    	out.println("<tr>");
			    	
			    	out.println("<td>");
			    	Integer id=rs.getInt("idprovincia");
			    	out.println(id);
			    	out.println("</td>");
			    	
			    	out.println("<td>");
			    	String user=rs.getString("nombre");
			    	out.println(user);
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
	
	
	
	
	
	
	