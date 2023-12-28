<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>location add</h1>
	
	<!-- private int location_id;
	private String street_address;
	private String postal_code;
	private String city;
	private String state_province;
	private String country_id;
	 -->
	
	<form action="./addProcess.jsp">
		<fieldset>
			Location ID<input type="text" name="location_id"><br>
			Street_address<input type="text" name="street_address"><br>
			Postal_code<input type="text" name="postal_code"><br>
			City<input type="text" name="city"><br>
			State_province<input type="text" name="state_province"><br>				
			Country_id<input type="text" name="country_id"><br>
			
		</fieldset>
		<button>추가</button>
	</form>
	
</body>
</html>