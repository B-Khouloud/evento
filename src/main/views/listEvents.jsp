<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd>
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
      <!-- Events -->
      <div class="container">
        <table class="table">
          <thead>
            <thead>
	            <tr>
	              <th scope="col">Title</th>
	              <th scope="col">producer</th>
	              <th scope="col">Date</th>
	              <th scope="col">Location</th>
	              <th scope="col">Type</th>
	              <th scope="col">Description</th>
	              <th scope="col">Price</th>
	              <th scope="col"></th>
	              <th scope="col"></th>
	            </tr>
	          </thead>
          </thead>
          <tbody>
	           <c:forEach var="event" items="${requestScope.events}">
					    	<tr>
							      <td><c:out value="${event.title} "></c:out></td>
					              <td><c:out value="${event.producer} "></c:out></td>
					              <td><c:out value="${event.dateEvent} "></c:out></td>
					              <td><c:out value="${event.location} "></c:out></td>
					              <td><c:out value="${event.type} "></c:out></td>
					              <td><c:out value="${event.description} "></c:out></td>
					              <td><c:out value="${event.price} "></c:out></td>
					              <td><img src="https://img.icons8.com/material-outlined/24/d30239/chisel-tip-marker.png"/></td>
					              <td><img src="https://img.icons8.com/material-outlined/24/d30239/filled-trash.png"/></td>
					         </tr>
		    	</c:forEach>
            </tbody>
        </table>
      </div>
      <!-- Users -->
      
      
      
      
      
      
      
      <div class="ajouter">
        <!--<button class="btn-ajout">Ajouter</button>-->
      </div>
    </section>
      
 
      
    
    
   
</body>
</html>

