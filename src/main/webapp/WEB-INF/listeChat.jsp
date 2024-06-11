<%--
  Created by IntelliJ IDEA.
  User: telci
  Date: 11/06/2024
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="listeChats" type="java.util.ArrayList<org.example.chatliste.entity.Chat>" scope="request"/>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/style/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<h1>Chats</h1>
<main class="container">
    <div class="row my-3">
        <div class="col-8 offset-2 text-bg-dark rounded p-3">
            <h1 class="fw-light">Liste de chat</h1>
            <hr>
            <table class="table table-dark text-center align-middle">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Prenom</th>
                    <th>Nom</th>
                    <th>Repas favoris</th>
                    <th>Date de naissance</th>
                </tr>
                </thead>
                <tbody>
                <% for (int i = 0; i < listeChats.size();i++) { %>
                <tr>
                    <td><%= i+1 %></td>
                    <td><%= listeChats.get(i).getNom() %></td>
                    <td><%= listeChats.get(i).getRace() %></td>
                    <td><%= listeChats.get(i).getRepasFavoris() %></td>
                    <td><%= listeChats.get(i).getDateNaissance() %></td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
</main>
</body>
</html>
