<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%
	String username = request.getParameter("user");
	String path = getServletContext().getRealPath("users.dat");
	System.out.println(path);
	Scanner scanner = new Scanner(new File(path));
	boolean flag = true;
	while (scanner.hasNextLine()) {
		String line = scanner.nextLine();
		if (username.equals(line)){
			flag = false;
			break;
		}
	}
	out.print(flag);
	scanner.close();
%>