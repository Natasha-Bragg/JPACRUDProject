<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Avenger</title>
</head>
<body>
<h2>Update Avenger</h2>
<form action="updateAvenger.do" method="GET">
     <input type= "text" value="${avenger.id}" name="id">


    
    <input type="submit" value="Update Avenger " />
</form>
</body>
</html>