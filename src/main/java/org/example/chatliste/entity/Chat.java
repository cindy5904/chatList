package org.example.chatliste.entity;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class Chat {
    private String nom;
    private String race;
    private String repasFavoris;
    private LocalDate dateNaissance;

    public Chat(String nom, String race, String repasFavoris, String dateNaissanceStr) {
        this.nom = nom;
        this.race = race;
        this.repasFavoris = repasFavoris;
        this.dateNaissance = LocalDate.parse(dateNaissanceStr,  DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }

    public String getRepasFavoris() {
        return repasFavoris;
    }

    public void setRepasFavoris(String repasFavoris) {
        this.repasFavoris = repasFavoris;
    }

    public LocalDate getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(LocalDate dateNaissance) {
        this.dateNaissance = dateNaissance;
    }
}
