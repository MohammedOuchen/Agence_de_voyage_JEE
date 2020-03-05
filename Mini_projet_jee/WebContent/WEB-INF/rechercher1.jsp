<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
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
                    <li class="breadcrumb-item active" aria-current="page">Rechercher</li>
                </ol>
            </nav>

            <div class="card text-center">
                <div class="card-header">
                    <ul class="nav nav-tabs card-header-tabs">
                        <li class="nav-item">
                            <a class="nav-link" href="rechercherVol.php">Vol</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" >Car</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="rechercherBus.php">bateau</a>
                        </li>
                    </ul>
                </div>
            </div>
    
            <div class="card-body">  
                <form class="form-inline">
                    <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Ville_de_depart</label>
                    <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                        <option selected>Ville</option>
                        <option value="1">Beni mellal</option>
                        <option value="2">Fes</option>
                        <option value="3">Rabat</option>
                    </select>

                    <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Ville_d`arrive</label>
                    <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                        <option selected>Ville</option>
                        <option value="1">Beni mellal</option>
                        <option value="2">Fes</option>
                        <option value="3">Rabat</option>
                    </select> 
                    
                    <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Date</label>
                    <input type="date" class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="date_rech" value="Mark" required />
                    <button type="submit" class="btn btn-primary my-1">Submit</button>
                </form>
            </div>
        </div>

        <img src="ph\logo-blanc.png" class="img-fluid" alt="Responsive image">                                                               
</BODY>
