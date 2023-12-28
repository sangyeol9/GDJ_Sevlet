<%@page import="com.winter.app.departments.DepartmentDAO"%>
<%@page import="com.winter.app.departments.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    DepartmentDTO departmentDTO = new DepartmentDTO();
    DepartmentDAO departmentDAO = new DepartmentDAO();
    String a = request.getParameter("department_id");
   int temp = Integer.valueOf(a);
    
    departmentDTO.setDepartment_id(Integer.valueOf(a));
   
    departmentDTO=departmentDAO.detail(departmentDTO);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>update</h1>
	
		<form action="./updateProcess.jsp">
		<fieldset>
			<div>
			department_id <input type="text" name="department_id" readonly="readonly" value="<%=departmentDTO.getDepartment_id() %>">	
			</div>
			<div>
			department_name<input type="text" name="department_name" value="<%=departmentDTO.getDepartment_name()%>">
			
			</div>
			<div>
			manager_id<input type="text" name= "manager_id" value="<%=departmentDTO.getManager_id()%>">
			</div>
			<div>
			location_id<input type = "text" name = "location_id" value="<%=departmentDTO.getLocation_id()%>">
			</div>
			<div>
			<input type="hidden" name ="temp" value="<%=temp %>">
			</div>
		<button>수정하기</button>
		</fieldset>
		
	
	</form>
	
	
</body>
</html>