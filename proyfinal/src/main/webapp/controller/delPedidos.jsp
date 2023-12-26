<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String idpe=request.getParameter("idpedido");
	
	
	try {
		ConexionDB conexion=new ConexionDB();
		Statement st=conexion.conectar();
		Integer okDel=st.executeUpdate("DELETE FROM pedidos WHERE idpedido="+idpe);
		
		if(okDel.equals(1)) {
			response.sendRedirect("../view/listadoProvincia.jsp");
		} else {
			response.sendRedirect("../view/listadoProvincia.jsp?mensaje=Error%20al%20eliminar%20el%20usuario");
		}
		
	} catch (Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/listadoProvincia.jsp?mensaje=Error%20al%20eliminar%20el%20usuario");
	}
	
	
%>