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
    <title>modifier</title>
</head>
<body>
<section class="modifier">
        <div class="container-fluid">
            <form class="formulaire was-validated col-6" method="post" action="events">
            <input type="hidden" name="id" value="${requestScope.event.id}">
                <div class="row">
                    <div class="titre col-6">
                        <label class="form-label">Titre</label>
                        <input class="form-control" required type="text" id="titre" name="title" value="${requestScope.event.title}">
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                    <div class="realiser-par col-6">
                        <label class="form-label">Realiser par</label>
                        <input class="form-control" required type="text" id="producteur" name="producer" value="${requestScope.event.producer}">
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                </div>
                <div class="row">
                    <div class="date col-6">
                        <label class="form-label">Date</label>
                        <input class="form-control" required type="date" id="date" name="dateEvent" value="${requestScope.event.getEventDateToString()}">
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                    <div class="localisation col-6">
                        <label class="form-label">Localisation</label>
                        <input class="form-control" required type="text" id="localisation" name="location" value="${requestScope.event.location}">
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                </div>
                <div class="row">
                    <div class="type col-6">
                        <label class="form-label">Type</label>
                        <select required class="form-select" id="sel" name="type" >
                            <option value="film" ${requestScope.event.type == "film" ? 'selected="selected"' : ''}>Film</option>
                            <option value="theatre" ${requestScope.event.type == "theatre" ? 'selected="selected"' : ''}>Piece de theatre</option>
                            <option value="concert" ${requestScope.event.type == "concert" ? 'selected="selected"' : ''}>Concert</option>
                            <option value="game" ${requestScope.event.type == "game" ? 'selected="selected"' : ''}>Match</option>
                        </select>
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                    <div class="prix col-6">
                        <label class="form-label">Prix</label>
                        <input class="form-control" required type="number" id="prix" name="price" value="${requestScope.event.price}">
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                </div>
                <div class="row">
                    <div class="desc col-6">
                        <label class="form-label">Decription</label>
                        <textarea name="description" required id="desc" cols="30" rows="10" >${requestScope.event.description}</textarea>
                        <div class="valid-feedback">Valider</div>
                        <div class="invalid-feedback">Champs obligatoire</div>
                    </div>
                    <div class=" img col-6">
                        <label for="file" class="label-file">modifier l'affiche</label>
                        <input id="file" class="input-file" type="file" name="file">
                    </div>
                </div>
                <input class="btn-modifier" type="submit" name="action" value="edit">
            </form>
        </div>
    </section>  
</body>
</html>