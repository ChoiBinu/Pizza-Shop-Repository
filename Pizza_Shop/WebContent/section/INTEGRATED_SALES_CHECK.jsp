<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<h3>통합매출조회</h3>

<%
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection
				("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		if(con != null) {
			out.println("Database Connect : [ " + " <b>success</b> ]<br>");
		} else {
			out.println("Database Connect : [ " + " <b>fail</b> ]<br>");
		};
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT");
		while(rs.next()) {
			out.println("Today date");
		}
		stmt.close();
		con.close();
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
