<%--
  Created by IntelliJ IDEA.
  User: telci
  Date: 11/06/2024
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/style.css">
</head>
<body>
<div class="container">

    <div class="container1">
        <h1 class="title">Chats 😸</h1>
<form method="post" action="chatlist" class="formulaire">
    <div class="form-group">
        <label for="nom">  Nom :</label>
        <input type="text" name="nom" id="nom">
    </div>
    <div class="form-group">
        <label for="race">  Race :</label>
        <input type="text" name="race" id="race">
    </div>
    <div class="form-group">
        <label for="repasFavoris">  Repas Favoris :</label>
        <input type="text" name="repasFavoris" id="repasFavoris">
    </div>
    <div class="form-group">
        <label for="dateNaissance">  Date de Naissance :</label>
        <input type="date"  name="dateNaissance" id="dateNaissance">
    </div>
    <button type="submit">Ajouter</button>
</form>
    </div>
</div>
</body>
</html>
