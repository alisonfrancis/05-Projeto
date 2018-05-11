<%-- 
    Document   : quiz
    Created on : 09/05/2018, 09:42:19
    Author     : Alison
--%>

<%@page import="br.com.fatepg.projeto05.Question"%>
<%@page import="br.com.fatepg.projeto05.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- inicio - tags meta e links-->
        <%@include file="WEB-INF/jspf/meta_links.jspf" %>
        <!-- Fim - tags meta e links -->
    </head>
    <body>
        <!-- inicio - navbar -->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <!-- Fim - navbar -->
        
            <!-- inicio - Conteudo -->
            <h1>Page Quiz</h1>
   <center>
               <h2>Responda as pegunatas Abaixo</h2>
        <form action="home.jsp">
            <%for(int i=0; i<Quiz.getTest().size();i++){%>                
            <% Question q =Quiz.getTest().get(i);%>
            <h3><%= q.getQuestion() %></h3>
             <%for(int i2=0; i2<q.getAltenatives().length;i2++){%>
             <input type="radio" name="<%= q.getQuestion()%>"
                    value="<%= q.getAltenatives()[i2]%>"/>
             <%= q.getAltenatives()[i2]%>
             <%}%>
            
            <%}%>
            <hr/>
            <input type="submit" name="testd" value="Volta" class="btn btn-info">
        </form>
    </center>
            <!-- Fim - Conteudo -->
        
        <!-- inicio - footer -->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!-- Fim - footer -->
    </body>
</html>
