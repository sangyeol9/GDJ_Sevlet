<%@page import="com.winter.app.regions.RegionDTO"%>
<%@page import="com.winter.app.regions.RegionDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%RegionDAO dao = new RegionDAO();
RegionDTO dto = new RegionDTO();
String n = request.getParameter("region_id");
int num =Integer.valueOf(n);
dto.setRegion_id(num);
dto = dao.getDetail(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Region Detail</h1>
<h3><%= dto.getRegion_name() %></h3>
<input id="hid" type="hidden" value="<%=dto.getRegion_id()%>">

<button id="btn">수정</button>

<script>
	
	let btn = document.getElementById("btn");
	let v = document.getElementById("hid").value;
	btn.addEventListener("click",function(){  //callback 함수
		alert(document.getElementById("hid").value);
		location.href="./update.jsp?region_id="+v;
		
	});
	
</script>

</body>
</html>