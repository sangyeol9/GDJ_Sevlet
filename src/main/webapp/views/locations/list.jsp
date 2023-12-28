<%@page import="java.util.List"%>
<%@page import="com.winter.app.Locations.LocationDAO"%>
<%@page import="com.winter.app.Locations.LocationDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    LocationDAO locationDAO = new LocationDAO();
    
    List<LocationDTO> ar = locationDAO.getList();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Location List</h1>
	
	<form>
		<fieldset>
		<table>
		<thead>
		<tr>
		<th>지역   </th>
		<th>도로명   </th>
		<th>postal_code   </th>
		<th>도시   </th>
		<th>주?   </th>
		<th>country_id</th>
		</tr>
		</thead>
		
		<tbody>
		<%for(LocationDTO locationDTO:ar){ %>
			<tr>
			<td><%=locationDTO.getLocation_id() %></td>
			<td><%=locationDTO.getStreet_address()%></td>
			<td><%=locationDTO.getPostal_code() %></td>
			<td><a href="./detail.jsp?location_id=<%=locationDTO.getLocation_id()%>"><%=locationDTO.getCity() %></a></td>
			<td><%=locationDTO.getState_province() %></td>
			<td><%=locationDTO.getCountry_id() %></td>
	
			</tr>
		<%} %>
		</tbody>
		
		</table>
		</fieldset>
	</form>
		<a href="./add.jsp">로케이션 추가</a>
	
</body>
</html>