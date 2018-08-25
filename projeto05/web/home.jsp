<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.BancoUsuarios"%>
<%@page import="br.com.fatecpg.quiz.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean tested = false;
    double grade = 0.0;
    
    if (request.getParameter("tested") != null) {
        tested = true;
        int count = 0;
        
        for (int i = 0; i < Quiz.getTest().size(); i++) {
            Question q = Quiz.getTest().get(i);
            String userAnswer = request.getParameter(q.getQuestion());
            
            if (q.getAnswer().equals(userAnswer)) {
                count++;
            }
        }
        grade = 100.0 * ((double) (count) / (double) (Quiz.getTest().size()));
        
        //String pontos = Double.toString(grade);
        
        Usuarios novoPonto = new Usuarios();
        novoPonto.setPonto(grade);
        BancoUsuarios.getUserPonto().add(novoPonto);
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - Quiz WEB</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        <h2>Home</h2>
        <%if (tested) {%>
            <hr />
            <h3><%= session.getAttribute("nome") %>, você acertou: <%= grade %>%</h3>
            <hr />
        <% } %>
        
        <form action="quiz.jsp" method="post">
            Usuario: <input type="text" name="usuario" required/><br><br>
            <input type="submit" value="Começar o quiz" name="enviar">
        </form>
    <hr />
    <table border="1">
        <h3>Ultimos 10 testes</h3>
        <tr>
            <th>Usuarios</th>
            <th>Pontuação</th>
        </tr>
<% for (int i = 0; i < BancoUsuarios.getUsuarios().size(); i++){ %>
        <tr>
            <td><%= BancoUsuarios.getUsuarios().get(i).getNome() %></td>
            <td><%= BancoUsuarios.getUserPonto().get(i).getPonto() %></td>
        </tr>
    
<%}%>
<!--
    </table>
    <table border="1">
        <h3>Ranking</h3>
        <tr>
            <th>Usuarios</th>
            <th>Pontuação</th>
        </tr>
//for (int i = 0; i < BancoUsuarios.getUsuarios().size(); i++){ %>
//for (int x = 1; x < BancoUsuarios.getUsuarios().size(); x++){ %>
// if (BancoUsuarios.getUserPonto().get(i).getPonto() > BancoUsuarios.getUserPonto().get(x).getPonto()){ %>
        <tr>
            <td>//= BancoUsuarios.getUsuarios().get(i).getNome() %></td>
            <td>//= BancoUsuarios.getUserPonto().get(i).getPonto() %></td>
        </tr>
    
//}%>

    </table>
-->
    </body>
</html>
