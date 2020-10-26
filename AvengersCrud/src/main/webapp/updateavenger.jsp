<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Avenger</title>
</head>
<body>


<form action="updateAvenger.do">
	<input type="hidden" name="id" value="${aven.id}">
    First Name:
    <input type="text" name="firstName" value="${avenger.firstName}"/> <br>
    Last Name:
    <input type="text" name="lastName" value="${avenger.lastName}"/> <br>
    Super Hero Name:
    <input type="text" name="superheroName" value="${avenger.superheroName}"/> <br> 
    Powers:
    <input type="text" name="powers" value="${avenger.powers}"/> <br>
    Number Of Movies:
    <input type="text" name="numberOfMovies" value="${avenger.numberOfMovies}"/> <br>
    Fun Facts:
    <input type="text" name="funFacts" value="${avenger.funFacts}"/> <br>
    Avenger Rank:
    <input type="text" name="avengerRank" value="${avenger.avengerRank}"/> <br>
    Myers Briggs Personality Type:
    <input type="text" name="myersBriggsType" value="${avenger.myersBriggsType}"/> <br>
    Quote:
    <input type="text" name="quote" value="${avenger.quote}"/> <br> 
    
    <input type="submit" value="Update Avenger " />
  </form>

</body>
</html>