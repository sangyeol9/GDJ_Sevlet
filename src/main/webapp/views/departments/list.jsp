<%@page import="com.winter.app.departments.DepartmentDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.winter.app.departments.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% DepartmentDAO dao = new DepartmentDAO();
	List<DepartmentDTO> ar = dao.getList();
	DepartmentDTO dto = new DepartmentDTO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>department</h1>
	<table>
	<thead>
	<tr>
		<th>department_ID</th>
		<th>department_name</th>
		<th>manager_id</th>
		<th>location_ID</th>
		</tr>
	</thead>		
	<tbody>
		<%for(DepartmentDTO departmentDTO:ar){ %>
			<tr>
			<td> <a  href="./detail.jsp?department_id=<%=departmentDTO.getDepartment_id() %>"><%= departmentDTO.getDepartment_id() %></a></td>
			<td><%= departmentDTO.getDepartment_name()%></td>
			<td><%= departmentDTO.getManager_id() %></td>
			<td><%= departmentDTO.getLocation_id() %></td>
			</tr>
		
		<%} %>
	
	</tbody>
	
	</table>
	<a href="./add.jsp">추가하기</a>


</body>
</html>