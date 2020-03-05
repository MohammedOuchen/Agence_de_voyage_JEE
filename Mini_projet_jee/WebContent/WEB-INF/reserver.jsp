<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
<HEAD>
<TITLE></TITLE>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="ph/icon.png"/>
<link   rel="stylesheet"   href="bootstrap.css" />
<link   rel="stylesheet"   href="fich.css" type="text/css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</HEAD>
<BODY>
<div class="container">
<div class="container-fluid">
  <img src="ph\logo.png" class="img-fluid" alt="Responsive image">
  </div>
  <nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="agence.php">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">Reserver</li>
  </ol>
</nav>
<div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="ph\ShehriVoyages14-11-2018_11-22-03avision.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
      
        </div>
      </div>
      <div class="carousel-item">
        <img src="ph\ShehriVoyages15-11-2018_15-55-43avision.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
        </div>
      </div>
      <div class="carousel-item">
        <img src="ph\ShehriVoyages15-11-2018_15-14-41avision.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
       
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<pre>

</pre>
<form action="reserver.php" method="post">
  <div class="form-row">
  
    <div class="col-md-4 mb-3">
      <label for="validationServer01">Nom: </label>
      <input type="text" class="form-control is-valid" id="validationServer01" placeholder="First name" name="nom" required>
    </div>
    
    <div class="col-md-4 mb-3">
      <label for="validationServer02">Prenom :</label>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Last name" name="prenom" required>
    </div>

  <div class="col-md-4 mb-3">
      <label for="validationServer02">CIN</label>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="CIN" name="cin" required>
    </div>
   
    <div class="col-md-4 mb-3">
      <label for="validationServer02">Email</label>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Email" name="email" required>
      <div class="valid-feedback">
      </div>
    </div>
   
    <div class="col-md-4 mb-3">
      <label for="validationServer02">Tel</label>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="N° Tel" name="tele" required>
    </div>

    <div class="col-md-4 mb-3">
      <label for="validationServer02">Adresse</label>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Adresse" name="adresse"  required>
  	  <br/>
    </div>
    
    <div class="col-md-4 mb-3">
      <label for="validationServer01">Num client </label>
      <input type="number" class="form-control is-valid" id="validationServer01" placeholder="ID Client" name="num_c" value="${idClient}" disabled="disabled" required>
	</div>
	
	<div class="col-md-4 mb-3">
      <label for="validationServer01">Num du voyege </label>
      <input type="number" class="form-control is-valid" id="validationServer01" placeholder="ID voyage" name="num_v" required>
	</div>
	
	<div class="col-md-4 mb-3">
      <label for="validationServer01">Nomber de place</label>
      <input type="number" class="form-control is-valid" id="validationServer01" placeholder="Nompbre places" name="place" required>
	</div>
  </div>
  
  <div class="col-md-4 mb-3">
      <input type="submit" value="submit form" class="btn btn-primary my-1"> 
  </div>
</form>
</div>   

<img src="ph\logo-blanc.png" class="img-fluid" alt="Responsive image">

</BODY>
</HTML>