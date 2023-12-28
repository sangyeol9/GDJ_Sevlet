<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>departments add</h1>
	
	<form action="./addProcess.jsp">
		<fieldset>
			<div>
			department_id <input type="text" name="department_id">	
			</div>
			<div>
			department_name<input type="text" name="department_name">
			
			</div>
			<div>
			manager_id<input type="text" name= "manager_id">
			</div>
			<div>
			location_id<input type = "text" name = "location_id">
			</div>
		<button>추가하기</button>
		</fieldset>
		
	
	</form>
</body>
</html>