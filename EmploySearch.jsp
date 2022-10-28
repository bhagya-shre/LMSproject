<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="beanDao" class="com.infinite.HibLms.EmployDAO"/>
	<form method="get" action="EmploySearch.jsp">
		<center>
			Employ Id : 
			<input type="number" name="empId" /> <br/><br/> 
			<input type="submit" value="Search" />
		</center>
	</form>
	<c:if test="${param.empId!=null}">
	<c:set var="empno" value="${param.empId}"/>
		<c:set var="employee" value="${beanDao.searchEmploy(empId)}"/>
		<c:if test="${employ!=null}">
		Employ Id : <b>
			<c:out value="${employ.empId}"/></b> <br/>
		Employ Name : <b>
			<c:out value="${employ.name}"/></b> <br/>
		Employ Email : <b>
			<c:out value="${employ.email}"/></b> <br/>
		Mob No : <b>
			<c:out value="${employ.mob}"/></b> <br/>
		Date of Join: <b>
			<c:out value="${employ.doj}"/></b> <br/>
		Department : <b>
			<c:out value="${employ.dept}"/></b> <br/>
		Manager Id : <b>
			<c:out value="${employ.mId}"/></b> <br/>
		
		</c:if>
	</c:if>
</body>
</html>