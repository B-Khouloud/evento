<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="modifier.css">
    <title>Ajouter</title>
</head>
<body>
<section class="modifier">
        <div class="container-fluid">
            <form class="formulaire was-validated col-6" method="post" action="events">
                <div class="row">
                    <div class="titre col-6">
                        <label class="form-label">Titre</label>
                        <input class="form-control" required type="text" id="title" name="title" >
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                    <div class="realiser-par col-6">
                        <label class="form-label">Realiser par</label>
                        <input class="form-control" required type="text" id="producer" name="producer" >
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                </div>
                <div class="row">
                    <div class="date col-6">
                        <label class="form-label">Date</label>
                        <input class="form-control" required type="date" id="date" name="date" >
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                    <div class="localisation col-6">
                        <label class="form-label">Localisation</label>
                        <input class="form-control" required type="text" id="location" name="location">
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                </div>
                <div class="row">
                    <div class="type col-6">
                        <label class="form-label">Type</label>
                        <select required class="form-select" id="sel" name="select">
                            <option>Film</option>
                            <option>Piece de theatre</option>
                            <option>Concert</option>
                            <option>Match</option>
                        </select>
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                    <div class="prix col-6">
                        <label class="form-label">Prix</label>
                        <input class="form-control" required type="number" id="price" name="price">
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                </div>
                <div class="row">
                    <div class="desc col-6">
                        <label class="form-label">Description</label>
                        <textarea name="description" required id="desc" cols="30" rows="10"></textarea>
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                    <div class=" img col-6">
                        <label for="file" class="label-file">ajouter l'affiche</label>
                        <input id="file" class="input-file" type="file" name="file">
                    </div>
                </div>
                <input class="btn-modifier" type="submit" name="action" value="add">
            </form>
        </div>
    </section>  
</body>
</html>