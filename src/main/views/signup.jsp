<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>s'inscrire client</title>
    <link rel="stylesheet" href="signup.css">
</head>
<body>
<section class="client">
        <nav>
            <div class="logo">
                <h1>Evento</h1>
            </div>
        </nav>
        <div class="container-fluid">
            <form class="formulaire was-validated" method="post" action="users">
                <div class="nom col-md-6">
                    <label class="form-label">Nom</label>
                    <input class="form-control" required type="text" id="name" name="username" >
                    <div class="valid-feedback">Valider</div>
                    <div class="invalid-feedback">Ce champs est obligatoire</div>
                </div>
                <div class="mdp col-md-6">
                    <label class="form-label">Mot de passe</label>
                    <input class="form-control" required type="password" id="password" name="password" >
                    <div class="valid-feedback">Valider</div>
                    <div class="invalid-feedback">Ce champs est obligatoire</div>
                </div>
                <div class="email col-md-6">
                    <label class="form-label">Role</label>
                    <input class="form-control" required type="text" id="role" name="role" >
                    <div class="valid-feedback">Valider</div>
                    <div class="invalid-feedback">Ce champs est obligatoire</div>
                </div>
                <input class="btn-ad btn2" type="submit" name="action" value="signup">
                
            </form>
        </div>
    </section>
</body>
</html>