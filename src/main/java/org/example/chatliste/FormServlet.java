package org.example.chatliste;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.chatliste.entity.Chat;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "chatlist", value = "/chatlist")
public class FormServlet extends HttpServlet {
    private List<Chat> listeChats = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/ajoutChat.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String race = req.getParameter("race");
        String repasFavoris = req.getParameter("repasFavoris");
        String dateNaissanceStr = req.getParameter("dateNaissance");

        LocalDate dateNaissance = LocalDate.parse(dateNaissanceStr, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        Chat chat = new Chat(nom, race, repasFavoris, dateNaissanceStr);
        listeChats.add(chat);
        System.out.println(nom+" "+race+" "+repasFavoris+" "+dateNaissance);
        req.setAttribute("listeChats", listeChats);
        getServletContext().getRequestDispatcher("/WEB-INF/listeChat.jsp").forward(req, resp);
    }
}
