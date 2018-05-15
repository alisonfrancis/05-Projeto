<%@page import="br.com.fatec.quiz.Usuario"%>
<%@page import="br.com.fatec.quiz.Quiz"%>
<%@page import="br.com.fatec.quiz.Question"%>
<%@page import="br.com.fatec.quiz.Bd"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%
           boolean tested = false;
           double grade = 0.0;
           if(request.getParameter("tested")!=null){
                            
               Usuario usuar = new Usuario();

               tested = true;
               int count =0;
               for(int i =0; i < Quiz.getTeste().size();i++){
                   Question q = Quiz.getTeste().get(i);
                   String userAnswer = request.getParameter(q.getQuestion());
                   if(q.getAnswer().equals(userAnswer));
                       count++;
               }
       
        grade = 100.0 * ((double) (count) / (double) (Quiz.getTeste().size()));
           
                      
          // if(request.getParameter("tested")!=null){
           //                   Usuario usuar = new Usuario();         
    
       // usuar.setUserName(request.getParameter("userName"));
       // Bd.getUser().add(usuar);
       // response.sendRedirect(request.getRequestURI());
               Usuario novoPonto = new Usuario();
        novoPonto.setPonto(grade);
        Bd.getUserPonto().add(novoPonto);
    }
%>

    
<html> 
        
            <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Home</title>
    </head>
    <body>               
        <br><br>
        
        <%if (tested) {%>
            <hr />
            <h3><%= session.getAttribute("loginUsuario") %>, você acertou: <%= grade %>%</h3>
            <hr />
                <% } %>

        <form method="post" action="Salvar.jsp">         
            <center>             
             <h4>Precisamos do seu login para começar</h4>              
                      

        <br> <center>               
                   Login:<br/><input type="text" name ="userName"/> <br/>                                   
                <input type="submit" class="btn btn-primary" name="entrar" value="Entrar">
      
            
                </form>   
        
          <fieldset>
                        <legend> Ultimos Acessos</legend>
     <div class="container">
         
         <section >
            <table class="table" border="1">    
                <tr>
                    <th> Usuário </th>
                    <th> Pontuação </th>
                    
                </tr> 

                <%for (int i = 0; i < Bd.getUser().size(); i++) {%>
                <tr> 
                    <td><%= Bd.getUser().get(i).getUserName()%></td>
            <td><%= Bd.getUserPonto().get(i).getPonto() %></td>


                   </tr>
                <% }%>
            </table> 
            
         </section>
            <table>
                        
            <hr/>
            <aside style=" left: auto">
            <table class="table" border="1">    
                <tr>
                    <th> Classificação </th>
                    <th> Nome </th>
                    <th> Pontuação  </th>

               </tr> 
                <%for (int i = 0; i < Bd.getUser().size(); i++) {%>
                <tr> 
                    <td><%= i%></td>
                    <td><%= Bd.getUser().get(i).getUserName()%></td>
                    <td><%= grade%></td>

                   </tr>
                <% }%>
            </table> 
            </aside>
                      </fieldset>

              
    
     </body>
    </html>
        
    
