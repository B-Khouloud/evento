<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="reserver.css">
    <title>Reserver</title>
</head>
<body>
<section class="details">
        <nav>
          <div class="logo">
              <h1>Evento</h1>
          </div>
          <ul class="navbar">
              <li><a href="#">Accueil</a></li>
              <li><a href="#">Programmes</a></li>
              <li><a href="#">Contacts</a></li>
              <li><a href="#">A propos</a></li>
          </ul>
        </nav>
        <div class="Qte">
            <div class="col-6">
                <img class="affiche" src="images/migalo.jpg" alt="">
            </div>
            <div class="infos col-6">
                <h4 class="titre">Titre :</h4>
                <h4 class="producteur">Realiser par :</h4>
                <label class="form-label">Type :</label>
                <select class="form-select" id="sel" name="select">
                    <option>VIP</option>
                    <option>Normal</option>
                </select>
            </div>
        </div>
        <button class="reserver">Reserver</button>
      </section>
</body>
</html>