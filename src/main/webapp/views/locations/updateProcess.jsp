<%@page import="com.winter.app.Locations.LocationDAO"%>
<%@page import="com.winter.app.Locations.LocationDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   LocationDTO dto = new LocationDTO();
   LocationDAO dao = new LocationDAO();
   dto.setCity(request.getParameter("city"));
   dto.setCountry_id(request.getParameter("country_id"));
   dto.setLocation_id(Integer.valueOf( request.getParameter("location_id")));
   dto.setPostal_code(request.getParameter("postal_code"));
   dto.setState_province(request.getParameter("state_province"));
   dto.setStreet_address(request.getParameter("street_address"));
   int result = dao.update(dto);
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>location updateProcess</h1>
	
	<script type="text/javascript">
	let result = <%=result %>;
	if(result>0)alert("성공");
	else alert("실패");
	location.href="./list.jsp";
	</script>
</body>
</html>