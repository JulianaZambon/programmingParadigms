// Aluno.java
public class Aluno extends Pessoa {
    private int[] notas = new int[4];  // Array para armazenar as 4 notas

    // Construtor da classe Aluno, aproveitando o construtor da classe Pessoa
    public Aluno(String nome, String endereco, String telefone, String email) {
        super(nome, endereco, telefone, email);
    }

    // Método para inserir uma nota, passando o valor e o índice
    public void insereNota(int valorNota, int indice) {
        if (indice >= 0 && indice < 4) {
            notas[indice] = valorNota;
        } else {
            System.out.println("Índice inválido. Insira um índice entre 0 e 3.");
        }
    }

    // Método para retornar o valor de uma nota, passando o índice
    public int retornaNota(int indice) {
        if (indice >= 0 && indice < 4) {
            return notas[indice];
        } else {
            System.out.println("Índice inválido. Insira um índice entre 0 e 3.");
            return -1;  // Valor de erro
        }
    }

    // Método para calcular e retornar a média das notas
    public double calculaMedia() {
        int soma = 0;
        for (int nota : notas) {
            soma += nota;
        }
        return soma / 4.0;  // Retorna a média
    }
}
