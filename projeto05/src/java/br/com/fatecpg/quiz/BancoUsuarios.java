package br.com.fatecpg.quiz;
import java.util.ArrayList;

public class BancoUsuarios {
    
    private static ArrayList<Usuarios> usuarios = new ArrayList<>();

    public static ArrayList<Usuarios> getUsuarios() {
        return usuarios;
    }
    
    private static ArrayList<Usuarios> ponto = new ArrayList<>();

    public static ArrayList<Usuarios> getUserPonto() {
        return ponto;
    }
    
}
