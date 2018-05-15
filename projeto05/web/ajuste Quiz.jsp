<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Quiz</title>
         <%@include file="WEB-INF/jspf/meta_links.jspf" %>
    </head>
    <body>
        <h1>Web Quiz</h1>
        <form action="Home.jsp">
            <% 
                for (int i=0; i < Quiz.getTest().size();i++){ %>
             <% Question q = Quiz.getTest().get(i); %> 
             <h3><%= q.getQuestion() %>  </h3>
             <% for(int j=0; j <q.getAlternatives().length;j++){ %>
             <input type="radio" name="<%=  q.getQuestion()%>" value=" <%= q.getAlternatives()[j] %>"/>
             <%= q.getAlternatives()[j] %>
                 <%}%>
             
             <% } %>
             <br><hr>
             <input type="submit" name="tested" value="enviar"/>
        </form>
        <%@include file="WEB-INF/jspf/footer.jspf" %>  
    </body>
</html>

      
           
        
   
      
