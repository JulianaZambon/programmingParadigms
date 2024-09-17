public class Main {
    public static void main(String[] args) {
        // Criação de um objeto Aluno
        Aluno aluno = new Aluno("Maria Silva", "Rua das Flores, 123", "99999-9999", "maria@email.com");

        // Inserindo notas
        aluno.insereNota(8, 0);
        aluno.insereNota(9, 1);
        aluno.insereNota(7, 2);
        aluno.insereNota(10, 3);

        // Calculando e mostrando a média
        System.out.println("A média das notas é: " + aluno.calculaMedia());

        // Retornando uma nota específica
        System.out.println("Nota do índice 2: " + aluno.retornaNota(2));
    }
}
