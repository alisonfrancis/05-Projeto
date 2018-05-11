/*
 *
 */
package br.com.fatepg.projeto05;


public class Question {
    
    private String question;
    private String answer;
    private String altenatives[];

    public Question(String question, String answer, String[] altenatives) {
        this.question = question;
        this.answer = answer;
        this.altenatives = altenatives;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String[] getAltenatives() {
        return altenatives;
    }

    public void setAltenatives(String[] altenatives) {
        this.altenatives = altenatives;
    }
    
    
    
}
