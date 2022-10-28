<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
     <jsp:useBean id="beanDao" class="com.infinite.HibLms.LeaveDAO"/>
	<table border="3" align="center">
	<tr>
		<th> Leave Id </th>
		<th> Employ Id</th>
		<th>Leave StartDate</th>
		<th>Leave EndDate</th>
		<th>No of Days</th>
		<th>Leave Type</th>
		<th>Leave Status</th>
		<th>Leave Reason</th>
		<th>Manager Comment</th>
	</tr>
	<c:forEach var="leave" items="${beanDao.showLeave()}" >


		<tr>
			<td>${leave.leaveId}</td>
			<td>${leave.empId}</td>
			<td>${leave.leaveStartDate}</td>
			<td>${leave.leaveEndDate}</td>
			<td>${leave.numberOfDays}</td>
			<td>${leave.leaveType}</td>
			<td>${leave.leaveStatus}</td>
			<td>${leave.leaveReason}</td>
			<td>${leave.managerComment}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>