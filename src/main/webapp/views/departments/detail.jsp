<%@page import="com.winter.app.departments.DepartmentDAO"%>
<%@page import="com.winter.app.departments.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%DepartmentDTO dto = new DepartmentDTO();
DepartmentDAO dao = new DepartmentDAO();
String n = request.getParameter("department_id");
int num = Integer.valueOf(n);

dto.setDepartment_id(num);
dto = dao.detail(dto);

//dto= dao.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> department detail </h1>

<h3 id="hi"><%=dto.getDepartment_id() %></h3>
<input id="hid" type="hidden" value="<%=dto.getDepartment_id()%>">

<button id="btn">수정</button>

<script>
 let btn = document.getElementById("btn");
 let v = document.getElementById("hid").value; 
 btn.addEventListener("click",function(){
	location.href="./update.jsp?department_id="+v; 
 })
</script>

</body>
</html>