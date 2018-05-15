<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.BancoUsuarios"%>
<%@page import="br.com.fatecpg.quiz.Usuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
   String loginUsuario = request.getParameter("usuario");
   session.setAttribute("nome", loginUsuario);
%>
<%
    try {
        if(request.getParameter("enviar") != null){
            Usuarios novoUsuario = new Usuarios();
            novoUsuario.setNome(loginUsuario);
            BancoUsuarios.getUsuarios().add(novoUsuario);
        }
    }catch(Exception ex) { %>
        <p>Preencha corretamente o nome do usuario</p>
    <% }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QUIZ - Web Quiz</title>
         <%@include file="WEB-INF/jspf/meta_links.jspf" %>
    </head>
    <body>
        <h1>Web Quiz</h1>
        <h2>QUIZ</h2>
        <form action="Home.jsp">
            <%for (int i = 0; i < Quiz.getTest().size(); i++){%>
                <% Question q = Quiz.getTest().get(i); %>
                <h3><%= q.getQuestion() %></h3>
                <%for (int i2 = 0; i2 < q.getAlternatives().length; i2++){%>
                    <input type="radio" name="<%= q.getQuestion() %>" value="<%= q.getAlternatives()[i2] %>"/>
                    <%= q.getAlternatives()[i2] %>
                <%}%>
            <%}%>
            <hr />
            <input type="submit" name="tested" value="Enviar"/>
        </form>
            <%@include file="WEB-INF/jspf/footer.jspf" %>  
    </body>
</html>
