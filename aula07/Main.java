package aula07;

import java.util.Scanner;
import java.util.Vector;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Vector<Arquivo> pessoas = new Vector<>();

        // Leitura dos dados até que "Fim" seja digitado
        while (true) {
            System.out.println("Digite o nome (ou 'Fim' para encerrar):");
            String nome = scanner.nextLine();
            if (nome.equalsIgnoreCase("Fim")) {
                break;
            }

            System.out.println("Digite o endereço:");
            String endereco = scanner.nextLine();

            System.out.println("Digite o telefone:");
            String telefone = scanner.nextLine();

            System.out.println("Digite o email:");
            String email = scanner.nextLine();

            // Criando o objeto Arquivo e adicionando ao Vector
            Arquivo pessoa = new Arquivo(nome, endereco, telefone, email);
            pessoas.add(pessoa);
        }

        // Grava os dados das pessoas em um arquivo
        System.out.println("Digite o nome do arquivo para gravar os dados:");
        String nomeArquivo = scanner.nextLine();
        Arquivo.gravaArquivo(pessoas, nomeArquivo);

        scanner.close();
    }
}
