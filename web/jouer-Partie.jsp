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
	<link rel="stylesheet" type="text/css" href="styleJouer.css">
	<title></title>
</head>
<body>
		<div class="mainBox">
			<div class="center">
			<div class="joueurBox avatar">
                            <c:forEach items="${listeDesJoueurDePartie}" var="jr">
				<table>
					<tr>
						<td><img  src="image/sorciВre.jpg" alt="Avatar"></td>
					</tr>
					<tr>
						<td class="libellé"><label>${jr.pseudo}</label></td>
					</tr>
					<tr>
						<td  class="libellé"><label>5 Cartes</label></td>
					</tr>
				</table>
                            </c:forEach>
			</div>
			
			
			</div>
		</div>
</body>
</html>