<%-- 
    Document   : loginJoueur
    Created on : 13 juil. 2018, 14:13:43
    Author     : Administrateur
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <link >
        <meta charset="UTF-8">
        <title> Log IN </title>

<link href="LoginStyle.css" type="text/css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Galada" rel="stylesheet">
    </head>

    <body>
        
        <!--***********************************-->
        
        <section class="loginBox">
            <h1>Connectez-vous</h1>
            <form method="POST">
                <label class="styleLabel">Pseudo</label>
                <input class="styleinput" type="text" name="pseudo"/>
                <div class="blocAvatar imgstyle">
                    <div class="form-check">
                       <input class="form-check-input" type="radio" name="radio" id="exampleRadios1" value="bleu" checked>
                       <label class="form-check-label" for="radio"><img src="image/sorc.jpg" alt="Avatar" style="width:200px"></label>
                   </div>
                   <div class="form-check">
                       <input class="form-check-input" type="radio" name="radio" id="exampleRadios2" value="rose"checked>
                       <label class="form-check-label" for="radio"><img src="image/sorciВre.jpg" alt="Avatar" style="width:200px"/></label>
                   </div>
                   <div class="form-check disabled">
                       <input class="form-check-input" type="radio" name="radio" id="exampleRadios3" value="vert" checked>
                       <label class="form-check-label" for="radio"><img src="image/tВlВchargement (2).jpg" alt="Avatar" style="width:200px !important"/></label>
                   </div>
                    
                </div>  


                   <a href="<c:url value="/ListeDesJoueursServlet"/>">
                       <input class="btnSubmit btnSubREjoindrePartie" type="submit" value="Valider">
                   </a>
                   <!--<input class="btnSubmit btnSubREjoindrePartie" type="submit" />-->
                
            </form>
            
            
        </section>
    </body>

</html>



