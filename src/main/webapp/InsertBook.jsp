<%@page import="java.sql.*"%>
<%
String BookName=request.getParameter("BookName");
int Cost;
Cost=Integer.parseInt(request.getParameter("Cost"));
int NoOfBooks=Integer.parseInt(request.getParameter("NoOfBooks"));
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","pass@word1");
	Statement st=con.createStatement();
	st.executeUpdate("insert into books(BookName,Cost,NoOfBooks) values('"+BookName+"','"+Cost+"','"+NoOfBooks+"') ");
	response.sendRedirect("save.html");
	
	
}
catch(Exception e){
	
	System.out.println(e);
	response.sendRedirect("error.html");
}
%>