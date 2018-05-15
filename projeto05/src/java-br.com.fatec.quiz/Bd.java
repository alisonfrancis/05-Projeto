package br.com.fatec.quiz;

import java.util.ArrayList;


public class Bd {
    
    private static final ArrayList<Usuario> user = new ArrayList <> ();

    public static ArrayList<Usuario> getUser() {
        return user;
    }
        private static ArrayList<Usuario> ponto = new ArrayList<>();

    public static ArrayList<Usuario> getUserPonto() {
        return ponto;
    }

    
}
