<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="home.css">
</head>
<body>
<!--section d'accueil-->
    <section class="accueil">
        <nav>
            <div class="logo">
                <h1>Evento</h1>
            </div>
            <ul class="navbar">
                <li><a href="#">Accueil</a></li>
                <li><a href="#">Programmes</a></li>
                <li><a href="#">Contacts</a></li>
                <li><a href="#">A propos</a></li>
                <a href="seConnecter.jsp"><input class="admin-login" type="submit" value="Se connecter"></a>
            </ul>
        </nav>
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                    <div class="titre">
                      <h1>Regarde-moi</h1>
                      <h3>Film de Najib Belkadhi</h3>
                      <button class="voir-details" type="button">Voir details</button>
                    </div>
                    <div class="affiche">
                      <img src="images/fi 3ineya.jpg" alt="">
                    </div>
              </div>
              <div class="swiper-slide">
                <div class="titre">
                  <h1>Regarde-moi</h1>
                  <h3>Film de Najib Belkadhi</h3>
                  <a href="details"><button class="voir-details" type="button">Voir details</button></a>
                </div>
                <div class="affiche">
                  <img src="images/fi 3ineya.jpg" alt="">
                </div>
              </div>
              <div class="swiper-slide">
                <div class="titre">
                  <h1>Regarde-moi</h1>
                  <h3>Film de Najib Belkadhi</h3>
                  <button class="voir-details" type="button">Voir details</button>
                </div>
                <div class="affiche">
                  <img src="images/fi 3ineya.jpg" alt="">
                </div>
              </div>
            </div>
            <div class="swiper-pagination"></div>
          </div>
    </section>
    <!--section des programmes-->
    <section class="programmes">
      <div class="prog">
        <h1>Nos Programmes</h1>
        <h4>voir plus</h4>
      </div> 
      <div class="films">
        <h2>Films</h2>
        <div class="swiper Swiper2">
          <div class="swiper-wrapper">
            <div class="swiper-slide swiper-slide2">
                <img src="images/fi 3ineya.jpg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
              <img src="images/halab.jpg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
              <img src="images/jeyda.jpg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
              <img src="images/dachra.jpg" alt="">
            </div>
          </div>
          <div class="swiper-pagination swiper-pagination2"></div>
        </div>
      </div>
      <div class="theatre">
        <h2>Theatre</h2>
        <div class="swiper Swiper2">
          <div class="swiper-wrapper">
            <div class="swiper-slide swiper-slide2">
                <img src="images/zied.jpg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
              <img src="images/big bossa.jpg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
              <img src="images/migalo.jpg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
              <img src="images/lotfi abdelli.jpg" alt="">
            </div>
          </div>
          <div class="swiper-pagination swiper-pagination2"></div>
        </div>
      </div>
      <div class="Concerts">
        <h2>Concerts</h2>
        <div class="swiper Swiper2">
          <div class="swiper-wrapper">
            <div class="swiper-slide swiper-slide2">
                <img src="images/9715788.jpeg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
              <img src="images/mahdi ayachi.jpg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
              <img src="images/saaber.jpg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
            </div>
          </div>
          <div class="swiper-pagination swiper-pagination2"></div>
        </div>
      </div>
      <div class="matchs">
        <h2>Matchs</h2>
        <div class="swiper Swiper2">
          <div class="swiper-wrapper">
            <div class="swiper-slide swiper-slide2">
                <img src="images/est.jpg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
              <img src="images/ca.jpg" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
              <img src="images/css.png" alt="">
            </div>
            <div class="swiper-slide swiper-slide2">
            </div>
          </div>
          <div class="swiper-pagination swiper-pagination2"></div>
        </div>
      </div>
    </section>
    <section class="contacts">
      <h1>Contactez-nous</h1>
      <div class="container">
        <form class="was-validated" method="post" action="ProjetServlet">
          <div class="nom col-8">
            <label class="form-label">Nom</label>
            <input class="form-control" type="text" id="nom" name="nom" required>
            <div class="valid-feedback">Valider</div>
            <div class="invalid-feedback">Ce champs est obligatoire</div>
          </div>
          <div class="email col-8">
            <label class="form-label">Email</label>
            <input class="form-control" type="email" id="email" name="email" required>
            <div class="valid-feedback">Valider</div>
            <div class="invalid-feedback">Ce champs est obligatoire</div>
          </div>
          <div class="message col-8">
            <label class="form-label">message</label>
            <textarea class="form-control" id="msg" name="msg" cols="30" rows="10"></textarea>
          </div>
          <div class="btn-contact col-8">
          	<input class="voir-details" type="submit" name="action" value="envoyer">         
          </div>
        </form>
      </div>
    </section>
    <section class="footer">
      <div class="about col-8">
        <p class="p1">Evento est votre site d'achat de ticket en ligne</p></br>
        <p class="p2">pour se divertie et assister a votre film, piece de theatre, concert</p></br>
        <p class="p3">de vos artistes preferes mais egalement pour encourager votre equipe sportive</p>
      </div>
      <div class="nb"></div>
        <div class="nb-film">
          <p>+100 </br> Films</p>
        </div>
        <div class="nb-spectacle">
          <p>+100 </br> Spectacles</p>
        </div>
        <div class="nb-concert">
          <p>+100 </br> Concerts</p>
        </div>
      </div>
      <div class="reseau">
        <span class="facebook"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
          <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
        </svg></span>
        <span class="instagram"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
          <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
        </svg></span>
        <span class="tel"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
          <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
        </svg></span>
        <span class="map"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
          <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
        </svg></span>
      </div>
      <h5>2022 Evento.All rights reserved</h5>
    </section>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   <!--pour le swiper de la page d'accueil--> 
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper(".mySwiper", {
          pagination: {
            el: ".swiper-pagination",
            dynamicBullets: true,
          },
        });
    </script>  
    <!--swiper pour les programmes-->
    <script>
      var swiper2 = new Swiper(".Swiper2", {
        slidesPerView: 3,
        spaceBetween: 30,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
      });
    </script>

</body>
</html>