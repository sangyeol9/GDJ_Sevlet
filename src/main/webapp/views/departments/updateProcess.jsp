<%@page import="com.winter.app.departments.DepartmentDAO"%>
<%@page import="com.winter.app.departments.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  int temp = Integer.valueOf(request.getParameter("temp"));
  DepartmentDTO departmentDTO = new DepartmentDTO();
  DepartmentDAO departmentDAO = new DepartmentDAO();
  departmentDTO.setDepartment_id(Integer.valueOf(request.getParameter("department_id")));
  departmentDTO.setDepartment_name(request.getParameter("department_name"));
 	departmentDTO.setLocation_id(Integer.valueOf(request.getParameter("location_id")));
 	departmentDTO.setManager_id(Integer.valueOf(request.getParameter("manager_id")));
 	 int result = departmentDAO.update(departmentDTO,temp);
  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>update process</h1>

<script type="text/javascript">
let result = <%=result %>;
if(result>0) alert("성공");
else alert("실패");
location.href="./list.jsp";
</script>
	
</body>
</html>