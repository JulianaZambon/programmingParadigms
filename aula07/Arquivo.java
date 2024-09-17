package aula07;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

// usando a classe Arquivo, crie um programa que leia os dados de pessoa até
// que seja digitado "Fim". coloque eses objetos em um Vector e crie um método
// da classe Arquivo que receba um vector e grave seus objetos em um arquivo

public class Arquivo {
    private String nome;
    private String endereco;
    private String telefone;
    private String email;

    public Arquivo(String nome, String endereco, String telefone, String email) {
        this.nome = nome;
        this.endereco = endereco;
        this.telefone = telefone;
        this.email = email;
    }

    // Getters
    public String getNome() {
        return nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getEmail() {
        return email;
    }

    // Método que grava os dados de um Vector de Arquivo em um arquivo de texto
    public static void gravaArquivo(Vector<Arquivo> pessoas, String nomeArquivo) {
        try (FileWriter fileWriter = new FileWriter(nomeArquivo);
             PrintWriter printWriter = new PrintWriter(fileWriter)) {

            for (Arquivo pessoa : pessoas) {
                printWriter.println("Nome: " + pessoa.getNome());
                printWriter.println("Endereço: " + pessoa.getEndereco());
                printWriter.println("Telefone: " + pessoa.getTelefone());
                printWriter.println("Email: " + pessoa.getEmail());
                printWriter.println("----------------------");
            }

            System.out.println("Dados gravados com sucesso no arquivo: " + nomeArquivo);

        } catch (IOException e) {
            System.out.println("Erro ao gravar o arquivo: " + e.getMessage());
        }
    }
}
