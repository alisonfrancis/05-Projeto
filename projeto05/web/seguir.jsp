
<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.BancoUsuarios"%>
<%@page import="br.com.fatecpg.quiz.Usuarios"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%
     boolean tested = false;
    
    double grade = 0.0;
    
    if(request.getParameter("tested") !=null){
        tested = true;
        
        int count = 0;
        
        for(int i=0; i<Quiz.getTest().size(); i++){
            
            Question q = Quiz.getTest().get(i);
            String userAnswer = request.getParameter(q.getQuestion());
            
            if(q.getAnswer().equals(userAnswer))
                count++;
        }
        
                       grade = 100.0 * ((double) (count) / (double) (Quiz.getTest().size()));

    }
%>

<html>
    <head>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Quiz</title>
        
    </head>
    
    <body>
        
        
    <center>
        
        
        <br><br>
        
        <h4 class="font">Seja Bem Vindo</h4><br>
        
        <h4 class="font">Começar o teste:</h4> <br>
        
        <h3 class="text-center"><a href="quiz.jsp"><button type="button">Clique aqui</button></a></h3>
        
        <br>
        
    </center>   
    
        
    </body>
</html>
