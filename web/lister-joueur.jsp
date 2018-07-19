<%-- 
    Document   : lister-joueur
    Created on : 17 juil. 2018, 11:45:41
    Author     : Administrateur
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="5" />
        <link href="styleListePartie.css" val="text/css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Galada" rel="stylesheet">
        <title> Liste Joueurs </title>
    </head>
    <body>
        <div  style="text-align: center; ">

            <div    style="width: 79%; display: inline-block;" >
                <div class = "mainBox arrondi  imgBackDiv">

                    <div class="fullLarge " >

                    </div>


                    <div class = "fullLarge design">
                        
                        <div class="textStyle"> 
                            <h1>Liste Des joueurs de la partie </h1>
                        </div>
                        
                        <div class = "fullLarge ">
                            <div class = "fullLarge design arrondi listePartie">
                                   <div class=" avatar joueurBox">  
                                    <table>
                                        <tr>
                                            <td><img  src="image/avatar/${moi.avatar}.jpeg" alt="Avatar"></td>
                                        </tr>
                                        <tr>
                                            <td class="libelle"><span>Moi</span></td>
                                        </tr>
                                    </table>
                                </div>
                                </div>
                             <div class="textStyle"><h3>Mes Adversaires </h3></div>

                             <c:forEach items="${partie.getJoueurs()}" var="jr"> 
                                <c:if test = "${jr.id != moi.id}">
                               
                                    <div class=" avatar joueurBox">  
                                    <table>
                                        <tr>
                                            <td><img  src="image/avatar/${jr.avatar}.jpeg" alt="Avatar"></td>
                                        </tr>
                                        <tr>
                                            <td class="libelle"><span>${jr.pseudo}</span></td>
                                        </tr>
                                    </table>
                                </div>
                                </c:if>
                            </c:forEach>  
                        </div>
                        
                        <div>
                            <a href="<c:url value="/JouerPartie?demarrerPartie=true"/>">
                            <input class="btnSubmit btnSubREjoindrePartie" type="button" value="Démarrer" ${partie.getJoueurs().size()>1 ? "" : "hidden"}>
                            </a>
                        </div>
                        <div class = "fullLarge" >
                            <br/><br/><br/><br/><br/><br/><br/><br/>

                        </div>

                    </div>
                </div>


            </div>

    </body>
</html>
