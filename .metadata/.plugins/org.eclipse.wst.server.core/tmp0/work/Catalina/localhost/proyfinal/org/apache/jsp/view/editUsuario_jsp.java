/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.27
 * Generated at: 2023-07-05 22:47:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import db.ConexionDB;

public final class editUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("db.ConexionDB");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.Statement");
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!doctype html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <title>Editar Usuario</title>\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css\">\r\n");
      out.write("  </head>\r\n");
      out.write("  <body class=\" bg-dark\">\r\n");
      out.write("	");

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
		response.sendRedirect("listadoUsuarios.jsp?mensaje=Hubo%20un%20problema%contactesé%20con%20el%20desarrollador");
		
	}
	
	
      out.write("	  \r\n");
      out.write("  \r\n");
      out.write("  	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\r\n");
      out.write("  	\r\n");
      out.write("	<div class=\"container w-25 mt-5  pt-2 pb-2 bg-white \">\r\n");
      out.write("    	<div class=\"border  \">\r\n");
      out.write("			<div class=\"text-center fs-3 my-4 text-decoration-underline\">Modificar Usuario</div>\r\n");
      out.write("			\r\n");
      out.write("			\r\n");
      out.write("			<div class=\"d-flex justify-content-center text-center\">\r\n");
      out.write("				<form action=\"../controller/updUsuario.jsp\" method=\"post\">\r\n");
      out.write("					<input type=\"hidden\" name=\"id\" value=\"");
 out.print(id); 
      out.write("\">\r\n");
      out.write("					<label for=\"user\" class=\"text-decoration-underline\">Usuario actual :</label>\r\n");
      out.write("					<input type=\"email\" name=\"user\" id=\"user\" onkeyup=\"validarUsu()\" value=\"");
 out.print(user); 
      out.write("\" class=\"form-control mb-3\" placeholder=\"usuario\" required>\r\n");
      out.write("					<label for=\"pass\" class=\"text-decoration-underline\">contraseña actual:</label>\r\n");
      out.write("					<input type=\"text\" name=\"pass\" id=\"pass\" onkeyup=\"showFort()\" value=\"");
 out.print(pass); 
      out.write("\" class=\"form-control mb-3\" placeholder=\"contraseña\" required>\r\n");
      out.write("					<label for=\"repPass\" class=\"text-decoration-underline\">reingrese contraseña :</label>\r\n");
      out.write("					<input type=\"password\" name=\"repPass\" id=\"repPass\" value=\"");
 out.print(pass); 
      out.write("\" onkeyup=\"compararPass()\" class=\"form-control mb-3\" placeholder=\"reingrese contraseña para comparar\" required>\r\n");
      out.write("					<input type=\"submit\" value=\"Enviar\" class=\"btn btn-outline-primary text-dark mb-3\">\r\n");
      out.write("				</form>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div id=\"mensaje\" ></div>\r\n");
      out.write("			\r\n");
      out.write("			\r\n");
      out.write("	    	");
 
	    		String mensaje=request.getParameter("mensaje");
	    		if(mensaje!=null){
	    			out.println("<div class='bg-danger text-center my-1 p-2'>");
	    			out.println(mensaje);	
	    			out.println("</div>");
	    		}
	    		
	    	
      out.write("				\r\n");
      out.write("    	</div>\r\n");
      out.write("		\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"js/registro.js\" ></script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("	");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
