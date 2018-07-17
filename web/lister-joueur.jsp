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
        <link href="styleListePartie.css" val="text/css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div  style="text-align: center; ">

            <div    style="width: 79%; display: inline-block;" >
                <div class = "mainBox arrondi  imgBackDiv">

                    <div class="fullLarge " >

                    </div>


                    <div class = "fullLarge">
                        <div class="textStyle"> 
                            <h1>Liste Des joueur de la partie </h1>
                        </div>
                        <div class = "fullLarge ">
                            <div class = "fullLarge design arrondi listePartie">
                                
                                <c:forEach items="${listeDesJoueurDePartie}" var="jr">
                                    
                                    <p> ${jr.pseudo}</p>
                                    <p> ${jr.cartes.size()}</p>
                                    
                                </c:forEach>    
                                 
                            </div>
                        </div>
                        <div>
                            <a href="<c:url value="/JouerPartie"/>">
                            <input class="btnSubmit btnSubREjoindrePartie" type="button" value="Démarrer">
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
