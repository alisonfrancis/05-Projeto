/*
 *Peguntas do Quiz
 */
package br.com.fatepg.projeto05;

import java.util.ArrayList;


public class Quiz {
    
      private static ArrayList<Question> test;
    public static ArrayList<Question> getTest(){
    if(test==null){
     
            
            test = new ArrayList<>();
            test.add(new Question("1+1","2",new String[]{"1","2","3"}));
            test.add(new Question("2+1","3",new String[]{"1","2","3"}));
            test.add(new Question("4+5","9",new String[]{"9","2","0"}));
            test.add(new Question("2+3","5",new String[]{"1","5","3"}));
            test.add(new Question("2+2","4",new String[]{"0","4","3"}));
    }
     return test;   
    }
    
    
}
