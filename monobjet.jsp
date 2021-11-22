<!DOCTYPE html>
<html>
    <head>
        <%@ page import="metier.Personne" %>
        <%@ page import="java.util.*" %>
        <%@ page session="true" %>
        <%@ page pageEncoding="UTF-8" %>
        <title> MonObjet </title>
    </head>
    <body>
        <h1>Hello World</h1>
        <%
        for(int i = 0; i <= 9; i++) {
            out.println(i + "<br />");
        }
        %>

        <p> avec quelques accents à é è</p>

        <% Personne p = new Personne(); %>
        <% out.println(p.toString()); %>

        <%!
        public class Cpt {
            private int val = 0;

            public Cpt() {
                val = 0;
            }

            public String getValue() {
                return "" + val;
            }

            public void incr() {
                val++;
            }
        }

        %>

        <% // Initialisation du compteur global
        Cpt global = (Cpt) application.getAttribute("global");
        if(global == null) {
            global = new Cpt();
            application.setAttribute("global", global);
        }

        global.incr();

        //Initialisation du compteur local
        Cpt local = (Cpt) session.getAttribute("local");
        if(local == null) {
            local = new Cpt();
            session.setAttribute("local", local);
        }
        local.incr();
        %>

        <h1>Vous avez accédé <%= local.getValue() %> sur les <%= global.getValue() %> accés au total</h1>
        
    </body>
</html>