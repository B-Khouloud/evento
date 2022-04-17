<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Admin</title>
    <link rel="stylesheet" href="admin.css">
</head>
<body>
	<section class="admin">
        <nav>
            <div class="logo">
                <h1>Evento</h1>
            </div>
            <ul class="navbar">
                <li><a href="#">Accueil</a></li>
                <li><a href="#">Programmes</a></li>
                <li><a href="#">Contacts</a></li>
                <li><a href="#">A propos</a></li>
                <button class="admin-login">Admin</button>
            </ul>
        </nav>
        <div class="container-fluid ">
            <form class="formulaire was-validated col-6" method="post" action="ProjetServlet">
                <div class="nom col-6">
                    <label class="form-label">Nom</label>
                    <input class="form-control" required type="text" id="nom" name="nom" >
                    <div class="valid-feedback">Valider</div>
                    <div class="invalid-feedback">Ce champs est obligatoire</div>
                </div>
                <div class="mot-de-passe col-6">
                    <label class="form-label">mot de passe</label>
                    <input class="form-control" required type="password" id="pwd" name="mdp" >
                    <div class="valid-feedback">Valider</div>
                    <div class="invalid-feedback">Ce champs est obligatoire</div>
                </div>
                <a href="listEvents.jsp"><input class="btn-ad" type="submit" name="action" value="Se connecter"></a>
            </form>

        </div>
    </section>
</body>
</html>