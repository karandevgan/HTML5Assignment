<%@page import="java.io.File"%>
<%@page import="java.io.FileWriter"%>
<%
	String username = request.getParameter("txtEmail");
	String password = request.getParameter("txtPassword");
	System.out.print(username);
	System.out.print(password);
	String path = getServletContext().getRealPath("users.dat");
	FileWriter fw = new FileWriter(new File(path), true);
	fw.write("\n" + username);
	fw.close();
	response.sendRedirect("apj_kalam.html");
%>