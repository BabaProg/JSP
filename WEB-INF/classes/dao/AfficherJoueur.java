package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import pojo.Joueur;

public class AfficherJoueur {

    public static void main(String[] args) {
        try {
            // enregistrement du driver
            Class.forName("org.h2.Driver");
            // connexion à la base
            String url = "jdbc:h2:tcp://localhost:9092/D:\\DataBase";
            String nom = "sa";
            String mdp = "";
            Connection con = DriverManager.getConnection(url, nom, mdp);
            String query = "SELECT * FROM JOUEUR";

            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            Joueur joueur = new Joueur();

            while (rs.next()) {
                System.out.println(joueur.toString());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
