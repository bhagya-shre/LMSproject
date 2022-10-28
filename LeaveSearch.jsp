<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="beanDao" class="com.infinite.HibLms.LeaveDAO"/>
	<form method="get" action="LeaveSearch.jsp">
		<center>
			Employ Id : 
			<input type="number" name="leaveId" /> <br/><br/> 
			<input type="submit" value="Search" />
		</center>
	</form>
	<c:if test="${param.leaveId!=null}">
	<c:set var="leaveId" value="${param.leaveId}"/>
		<c:set var="leave" value="${beanDao.searchLeave(leaveId)}"/>
		<c:if test="${leave!=null}">
		    Leave Id : <b>
				<c:out value="${leave.leaveId}"/></b> <br/>
		    Employ Id : <b>
				<c:out value="${leave.empId}"/></b> <br/>
			Leave StartDate : <b>
				<c:out value="${leave.leaveStartDate}"/></b> <br/>
			Leave EndDate : <b>
				<c:out value="${leave.leaveEndDate}"/></b> <br/>
			No of Days: <b>
				<c:out value="${leave.numberOfDays}"/></b> <br/>
			Leave Type: <b>
				<c:out value="${leave.leaveType}"/></b> <br/>
			Leave Status: <b>
				<c:out value="${leave.leaveStatus}"/></b> <br/>
			Leave Reason : <b>
				<c:out value="${leave.leaveReason}"/></b> <br/>
			Manager Comment : <b>
				<c:out value="${leave.managerComment}"/></b> <br/>
		</c:if>
	</c:if>
</body>
</html>