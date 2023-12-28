<%@page import="java.util.List"%>
<%@page import="com.winter.app.regions.RegionDAO"%>
<%@page import="com.winter.app.regions.RegionDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 //java 구역 - 스크립틀릿
 	RegionDAO dao = new RegionDAO();
  	List<RegionDTO> ar	= dao.getList();
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Regions List</h1>
	<table>
		<thead>
			<tr>
			<th>REGION_ID</th>
			<th>RESION_NAME</th>
			</tr>
		</thead>
		<tbody>
		<% for(RegionDTO regionDTO:ar){%> 
			<tr>
				<td><%= regionDTO.getRegion_id() %></td>
				<td> <a target="_blank" href="./detail.jsp?region_id=<%=regionDTO.getRegion_id()%>"> <%= regionDTO.getRegion_name() %> </a> </td>
			</tr>
		<% }%>
			
		</tbody>
	</table>

	<a target="_blank" href="./add.jsp">대륙추가</a>


</body>
</html>