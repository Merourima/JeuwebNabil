<%-- 
    Document   : jouer-Partie
    Created on : 13 juil. 2018, 12:13:08
    Author     : Administrateur
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
        <link href="styleListePartie.css" val="text/css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Galada" rel="stylesheet">
	<title></title>
</head>
 <body>
        <div  style="text-align: center; ">

            <div    style="width: 79%; display: inline-block;" >
                <div > 
                    <!--class = ""mainBox arrondi  imgBackDiv-->

                    <div class="fullLarge " >

                    </div>


                    <div class = "fullLarge design">
                        
                        <div class = "fullLarge ">
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
                                        <tr>
                                            <td  class="libelle"><span>${jr.getCartes().size()} Cartes</span></td>
                                        </tr>
                                    </table>
                                </div>
                                </c:if>
                            </c:forEach>  
                        </div>
                        
                        <div class = "fullLarge" >
                            <div class = "fullLarge ">
                                <a> <input class="floatRight" type="button" value="Lancer Sort"></a><br>
                            </div>
                            <div class = "fullLarge ">
                                <a> <input class="floatRight" type="button" value="Passer Tour"></a>
                            </div>

                        </div>
                        
                        <div class="fullLarge">
                                <div class=" avatar joueurBox">  
                                    <table>
                                        <tr>
                                            <td><img  src="image/avatar/${moi.avatar}.jpeg" alt="Avatar"></td>
                                        </tr>
                                        <tr>
                                            <td class="libelle"><span>Moi</span></td>
                                        </tr>
                                        <tr>
                                            <td  class="libelle"><span>${moi.getCartes().size()} Cartes</span></td>
                                        </tr>
                                    </table>
                                        <div class="libelle">
                                             <c:forEach items="${moi.getCartes()}" var="carte">
                                                 <span>${carte.getTypeIngredient()}</span>
                                            </c:forEach>
                                        </div>
                                           
                                </div>
                        </div>

                        <div class = "fullLarge" >
                            <br/><br/><br/><br/><br/><br/><br/><br/>

                        </div>


                    </div>
                </div>


            </div>

    </body>
</html>