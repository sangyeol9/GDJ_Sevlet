<%@page import="com.winter.app.Locations.LocationDAO"%>
<%@page import="com.winter.app.Locations.LocationDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LocationDTO dto = new LocationDTO();
	LocationDAO dao = new LocationDAO();
	dto.setLocation_id(Integer.valueOf( request.getParameter("location_id")));
	dto = dao.detail(dto);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>detail</h1>
	<h3><%=dto.getLocation_id() %></h3>
	<input type="hidden" id ="hid" value="<%=dto.getLocation_id() %>">
	<div>
	<button id="btn">수정하기</button>
	</div>
	
	<script type="text/javascript">
	let btn = document.getElementById("btn");
	let hid = document.getElementById("hid");
	btn.addEventListener("click",function(){
		alert(hid.value);
		location.href="./update.jsp?location_id="+hid.value;
	})
	
	</script>
</body>
</html>