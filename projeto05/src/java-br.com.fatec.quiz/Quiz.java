
package br.com.fatec.quiz;
import java.util.ArrayList;


import java.util.ArrayList;

public class Quiz {
    private static ArrayList<Question> teste;
    public static ArrayList<Question> getTeste(){
        if(teste == null){
            teste = new ArrayList<>();
            teste.add(new Question("1. Qual é o principal componente de um computador?", "Placa mãe",new String[]{"Monitor", "Memória", "Placa mãe"}, true));
            teste.add(new Question("2. Na falta de quais destes componentes, você não consegue utilizar um computador?", "Processador",new String[]{"Mouse", "Processador", "Monitor"}, true)); 
            teste.add(new Question("3. As imagens em sites às vezes aparecem tão rápido, por quê?", "Cache",new String[]{"Cache", "Internet", "Computador Ultra-veloz"}, true)); 
            teste.add(new Question("4. Dentre as alternativas a seguir, qual não faz parte de um item de hardware?", "Debian",new String[]{"Debian", "Teclado", "Memória RAM"}, true)); 
            teste.add(new Question("5. Selecione a opção abaixo que não caracteriza uma medida de segurança para seu computador.", "Utilizar o desfragmentador de discos do windows",new String[]{"Deixar o Firewall ativado", "Colocar senha para que somente você tenha acesso ao sistema", "Utilizar o desfragmentador de discos do windows"}, true)); 
            teste.add(new Question("6. Escolha a alternativa que representa as características do aplicativo TeamViewer.", "Estabelece a ligação a qualquer computador ou servidor, permitindo o acesso remoto a distância",new String[]{"Realiza troca de grandes volumes de dados de um computador para o outro", "Permite atualizar todos os aplicativos do computador", "Estabelece a ligação a qualquer computador ou servidor, permitindo o acesso remoto a distância"}, true)); 
            teste.add(new Question("7. Cache pode ser definido em", "Área reservada para armazenar os dados mais acessados, permitindo assim uma performance mais rápida a esses",new String[]{"Deixar o Firewall ativado", "Área reservada para armazenar os dados mais acessados, permitindo assim uma performance mais rápida a esses", "multiprocessamento de tarefas"}, true)); 
            teste.add(new Question("8. O que significa BIOS?", "Sistema Básico de Entrada e Saída.",new String[]{"Sistema Brasileiro de Informação Organizado.", "Sistema Básico de Entrada e Saída.", "Sistema Biônico de Tecnologia."}, true)); 
            teste.add(new Question("9. São sistemas operacionais:", "Windows 8, Android e IOS.",new String[]{"Asus, AMD e Intel.", "Tablets, Smatphones e Notebooks.", "Windows 8, Android e IOS."}, true)); 
            teste.add(new Question("10. Qual a principal função do Sistema Operacional?", "Se trata de um programa especial que atua de forma intermediária entre os usuários e os componentes de um computador.",new String[]{"Corrigir os danos de um Computador.", "Ler os dispositivos de um computador.", "Se trata de um programa especial que atua de forma intermediária entre os usuários e os componentes de um computador."}, true)); 
        }
        return teste;
    }
}
