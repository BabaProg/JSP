<!DOCTYPE html>
<html>
    <head>
        <%@ page pageEncoding="UTF-8" %>
        <title> MaPage </title>
    </head>
    <body>
        <h1>Hello World</h1>
        <%
          for(int i = 0; i <= 9; i++) {
              out.println(i + "<br />");
          }
        %>
        <p> avec quelques accents à é è</p>
    </body>
</html>