<%@page import="com.winter.app.regions.RegionDTO"%>
<%@page import="com.winter.app.regions.RegionDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	RegionDAO regionDAO = new RegionDAO();
	RegionDTO regionDTO = new RegionDTO();
	regionDTO.setRegion_id(Integer.valueOf(request.getParameter("region_id")));
	regionDTO.setRegion_name(request.getParameter("region_name"));
	int result = regionDAO.update(regionDTO);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>updateProcess.jsp</h1>
	
	<script>
	let result = "<%=result%>";
	if(result>0) alert("성공");
	else alert("실패");
	
	//location.href="./list.jsp";
	location.href="./detail.jsp?region_id=<%=request.getParameter("region_id") %>";
	</script>
	
</body>
</html>