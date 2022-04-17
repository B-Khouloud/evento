<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="listEvents.css">
</head>
<body>
	<section class="dashboard">
		<nav class="deconnecter">
        <div class="logo">
          <h1>Evento</h1>
        </div>
        <ul class="navbar">
          <li><a href="/events?action=list">Events</a></li>
          <li><a href="/users?action=list">Users</a></li>
          <li><a href="#">Commandes</a></li>
          <a type="button" class="signout" href="home.jsp">Sign out</a>
        </ul>
      </nav>
      <div class="container">
      	<table class="table">
          <thead>
            <thead>
	            <tr>
	              <th scope="col">Username</th>
	              <th scope="col">Password</th>
	              <th scope="col">Role</th>
	              <th scope="col"></th>
	              <th scope="col"></th>
	            </tr>
	          </thead>
          </thead>
          <tbody>
	           <c:forEach var="user" items="${requestScope.users}">
					    	<tr>
							      <td><c:out value="${user.username} "></c:out></td>
					              <td><c:out value="${user.password} "></c:out></td>
					              <td><c:out value="${user.role} "></c:out></td>
					              <td><img src="https://img.icons8.com/material-outlined/24/d30239/filled-trash.png"/></td>
					         </tr>
		    	</c:forEach>
            </tbody>
        </table>
        <a href="Controller?action=Add" name="action" value="Add">Add</a>
        
      </div>
</body>
</html>