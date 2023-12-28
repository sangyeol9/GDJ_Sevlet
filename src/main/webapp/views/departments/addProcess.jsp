<%@page import="com.winter.app.departments.DepartmentDAO"%>
<%@page import="com.winter.app.departments.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
DepartmentDTO departmentDTO = new DepartmentDTO();
DepartmentDAO departmentDAO = new DepartmentDAO();
String department_id = request.getParameter("department_id");
String department_name = request.getParameter("department_name");
String manager_id = request.getParameter("manager_id");
String location_id = request.getParameter("location_id");
departmentDTO.setDepartment_id(Integer.valueOf(department_id));
departmentDTO.setDepartment_name(department_name);
departmentDTO.setManager_id(Integer.valueOf(manager_id));
departmentDTO.setLocation_id(Integer.valueOf(location_id));
int result = departmentDAO.addList(departmentDTO);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>departments addProcees </h1>
	
	<script>
	let result = '<%=result%>';
	if(result>0) alert("추가 성공");
	else alert("추가 실패");
	
	window.location.href="list.jsp";
	
	</script>
	
</body>
</html>