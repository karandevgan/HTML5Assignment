<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%
	String username = request.getParameter("user");
	String path = application.getRealPath("/") + "users.dat";
	Scanner scanner = new Scanner(new File(path));
	boolean flag = false;
	while (scanner.hasNextLine()) {
		String line = scanner.nextLine();
		if (username.equals(line)){
			flag = true;
			break;
		}
	}
	out.print(flag);
	scanner.close();
%>