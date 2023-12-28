<%@page import="com.winter.app.Locations.LocationDAO"%>
<%@page import="com.winter.app.Locations.LocationDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LocationDTO dto = new LocationDTO();
	LocationDAO dao = new LocationDAO();
	
	dto.setLocation_id(Integer.valueOf( request.getParameter("location_id")));
	dto=dao.detail(dto);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>location update</h1>
	
	<form action="./updateProcess.jsp">
		<fieldset>
			Location ID<input type="text" readonly="readonly" name="location_id" value = "<%=dto.getLocation_id() %>"><br>
			Street_address<input type="text" name="street_address" value = "<%=dto.getStreet_address() %>" ><br>
			Postal_code<input type="text" name="postal_code" value = "<%=dto.getPostal_code()%>"><br>
			City<input type="text" name="city" value = "<%=dto.getCity()%>"><br>
			State_province<input type="text" name="state_province" value = "<%=dto.getState_province()%>"><br>				
			Country_id<input type="text" name="country_id" value = "<%=dto.getCountry_id()%>"><br>
			
		</fieldset>
		<button>수정</button>
	</form>
	
</body>
</html>