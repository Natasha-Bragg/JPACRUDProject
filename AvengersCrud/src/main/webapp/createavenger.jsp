<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create An Avenger</title>
</head>
<body>
<form action="createAvenger.do" method="GET">
    First Name:
    <input type="text" name="firstName"/> <br>
    Last Name:
    <input type="text" name="lastName"/> <br>
    Super Hero Name:
    <input type="text" name="superheroName"/> <br> 
    Powers:
    <input type="text" name="powers"/> <br>
    Number Of Movies:
    <input type="text" name="numberOfMovies"/> <br>
    Fun Facts:
    <input type="text" name="funFacts"/> <br>
    Avenger Rank:
    <input type="text" name="avengerRank"/> <br>
    Myers Briggs Personality Type:
    <input type="text" name="myersBriggsType"/> <br>
    Quote:
    <input type="text" name="quote"/> <br> 
    
    <input type="submit" value="Create Avenger " />
  </form>

</body>
</html>