<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PIZZA 판매관리 프로그램</title>
</head>
<body>
	<%@include file="common/header.jsp" %>
	<%@include file="common/footer.jsp" %>
	<%@include file="common/nav.jsp" %>
	
	<%
		String section = request.getParameter("section") != null ? request.getParameter("section"):"";
	
		switch(section) {
		case "SALES_STATEMENT_REGISTRATION":
			%> <%@include file="section/SALES_STATEMENT_REGISTRATION.jsp" %> <%
			break;
		case "INTEGRATED_SALES_CHECK":
			%> <%@include file="section/INTEGRATED_SALES_CHECK.jsp" %> <%
			break;
		case "STATUS_OF_SALES_BY_BRANCH":
			%> <%@include file="section/STATUS_OF_SALES_BY_BRANCH.jsp" %> <%
			break;
		case "SALES_STATUS_BY_PRODUCT":
			%> <%@include file="section/SALES_STATUS_BY_PRODUCT.jsp" %> <%
			break;
		default:
			break;
		}
	%>
</body>
</html>