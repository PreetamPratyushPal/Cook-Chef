<%@page import="com.cookchef.dao.RecipeDao"%>
<%@page import="com.cookchef.model.RecipeModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- 
	 @author Mrudul Tora (0801IT191049)
	 @author Preetam Pratyush Pal (0801IT191059)
-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CookChef - Update Recipe</title>
<link rel="icon" type="image/x-icon"
	href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh0AD2r-cwoXE--HSypYTElKmTSLA5ljsU5Nm-6atGZ5rJcYJrMpi3itomljA2kOTEK5s&usqp=CAU">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<style>
.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	color: white;
	text-align: center;
}

body {
	margin: 0;
	padding: 0;
	background: linear-gradient(120deg, black 10%, #072A6C 70%);
	height: 100vh;
	overflow-x: hidden;
	overflow-y: scroll;
}

nav {
	background: linear-gradient(60deg, black 20%, #072A6C 90%);
}

label {
	display: inline-block;
	float: left;
	clear: left;
	width: 150px;
	text-align: left;
}

input {
	display: inline-block;
	float: left;
}

.vertical-center {
	margin: 0;
	position: absolute;
	right: 50%;
}
</style>
<body>
	<%
	if (request.getSession().getAttribute("username") == null) {
		response.sendRedirect("/CookChef/login.jsp");
	}
	int id = (int) request.getAttribute("id");
	try {
		RecipeModel recipeModel = new RecipeDao().getRecipe(id);
		if (recipeModel == null) {
			throw new Exception();
		}
		String ingredients = recipeModel.getIngredients();
		String recipe = recipeModel.getRecipe();
		recipe = recipe.replace("<br>", "\n");
		ingredients = ingredients.replace("<br>", "\n");
	%>
	<header>
		<nav class="navbar navbar-toggleable-md navbar-dark bg-faded">
			<div>
				<b> <a class="navbar-brand" href="#"> <img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh0AD2r-cwoXE--HSypYTElKmTSLA5ljsU5Nm-6atGZ5rJcYJrMpi3itomljA2kOTEK5s&usqp=CAU"
						style="width: 50px; height: 50px;" /> Add Recipe
				</a></b>
			</div>
			<ul class="navbar-nav ml-auto">
				<li>
					<%
					if (request.getSession().getAttribute("username") != null) {
					%> <a href="#" style="color: white;" align="right"><%=request.getSession().getAttribute("username")%></a><br>
					<a href="/CookChef/Logout" style="color: white;">Logout</a> <%
 } else {
 %> <a href="/CookChef/login.jsp" style="color: white;">Login</a> <%
 }
 %>
				</li>
			</ul>

		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card"
			style="background-color: white; border-radius: 10px;">
			<div class="card-body">
				<form action="UpdateDetails" method="post"
					enctype="multipart/form-data" accept-charset="ISO-8859-1">
					<label><b>Title: </b></label><input type="text" name="title"
						value="<%=recipeModel.getTitle()%>" required
						style="width: 300px; border: 1px solid black;"><br> <br>
						
					<label><b>Cooking Time: (in minutes)</b></label> <input
						type="number" name="cooking-time"
						style="width: 300px; border: 1px solid black;" required
						value="<%=recipeModel.getCookingTime()%>"><br> <br>
						
						<label><b>Ingredients:</b></label>
					<textarea name="ingredients"
						style="height: 150px; width: 300px; border: 1px solid black;"
						required><%=ingredients%></textarea>
						
						<br> <br>
					<label><b>Recipe:</b></label>
					<textarea name="recipe"
						style="height: 200px; width: 300px; border: 1px solid black;"
						required> <%=recipe%></textarea>
						
						
					<br> <br> <label><b>Select Image:</b></label> <input
						type="file" name="image" accept="image/*" required><br>
					<br> <input class="vertical-center" type="submit"
						value="Submit" name="submit"
						style="background: linear-gradient(120deg, black 20%, #072A6C 90%); color: white; width: 100px;"><br>
					<br> <input type="hidden" name="id" value="<%=id%>">
				</form>
			</div>
		</div>
	</div>
	
	<!-- <div class="footer"><p>??CookChef - Mrudul Tora and Preetam Pratyush Pal</p></div> -->
	
	
</body>
<%
} catch (Exception e) {
request.setAttribute("error", "No such recipe id exists. Try Again!");
RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
rd.forward(request, response);
}
%>
</html>