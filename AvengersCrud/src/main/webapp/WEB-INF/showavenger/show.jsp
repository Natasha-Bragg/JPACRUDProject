<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Avenger</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>
	<div>
		<h5>${avenger.firstName}
			${avenger.lastName} - ${avenger.superheroName}
			</h5>
			<p>
			<h>Powers:</h4>
			${avenger.powers}
			</p>
			<h4>Number Of Movies:</h4>
			<p>${avenger.numberOfMovies}</p>

			<p>${avenger.funFacts}</p>
			<h4>Avenger Rank:</h4>
			<p>${avenger.avengerRank}</p>
			<h4>Myers Briggs Personality Type:</h4>
			<p>${avenger.myersBriggsType}</p>
			<h4>Avengers Quote(s):</h4>
			<p>${avenger.quote}</p>
			
		<!-- <a href="updateavenger.jsp">Update an Existing Avenger</a><br/> -->
			
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>

</body>
</html>