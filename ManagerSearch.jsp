<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="beanDao" class="com.infinite.HibLms.EmployDAO"/>
	<form method="get" action="ManagerSearch.jsp">
		<center>
			Manager Id : 
			<input type="number" name="mId" /> <br/><br/> 
			<input type="submit" value="Search" />
		</center>
	</form>
	<c:if test="${param.mId!=null}">
	<c:set var="mId" value="${param.mId}"/>
		<c:set var="employ" value="${beanDao.searchManager(mId)}"/>
		<c:if test="${employ!=null}">
		
	   Employ Id : <b>
			<c:out value="${employ.empId}"/></b> <br/>
	   Employ Name : <b>
			<c:out value="${employ.name}"/></b> <br/>	
	   Employ Mail : <b>
			<c:out value="${employ.email}"/></b> <br/>
       Mob No : <b>
       		<c:out value="${employ.mob}"/></b> <br/>
       Date Of Join : <b>
       	     <c:out value="${employ.doj}"/></b> <br/>		
	   Department : <b>
			<c:out value="${employ.dept}"/></b> <br/>
		Manager Id : <b>
			<c:out value="${employ.mId}"/></b> <br/>
		LeaveAvail : <b>
			<c:out value="${employ.leaveAvail}"/></b> <br/>
	   
		</c:if>
	</c:if>
</body>
</html>