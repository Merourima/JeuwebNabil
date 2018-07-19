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
	<link href="styleJouer.css" val="text/css" rel="stylesheet">
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
                            <c:forEach items="${listeDesJoueurDePartie}" var="jr">
                                <c:if test="${jr.id != moi.id}" >
                                <div class=" avatar joueurBox">  
                                    <table>
                                        <tr>
                                            <td><img  src="image/avatar/${jr.avatar}.jpeg" alt="Avatar"></td>
                                        </tr>
                                        <tr>
                                            <td class="libellé"><label>${jr.pseudo}</label></td>
                                        </tr>
                                        <tr>
                                            <td  class="libellé"><label>${jr.getCartes().size()} Cartes</label></td>
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
                                <div class="large5 avatar libelle">
                                    <table>
                                        <tr>
                                            <td><img  src="image/avatar/${moi.avatar}.jpeg" alt="Avatar" style="width:200px"></td>
                                        </tr>
                                        <tr>
                                            <td class="libelle"><label>${moi.pseudo}</label></td>
                                        </tr>
                                    </table>
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