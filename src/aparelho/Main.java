package aparelho;

/**
 * Classe para testar as saídas.
 */
public class Main {

    public static void main(String[] args) {
        AparelhoMultiuso aparelho = new AparelhoMultiuso();

        System.out.println("------------->");
        aparelho.selecionarMusica("Aline Barros");
        aparelho.tocar();
        aparelho.pausar();

        System.out.println("------------->");
        aparelho.atender();
        aparelho.iniciarCorreioVoz();
        aparelho.ligar(78028921);

        System.out.println("------------->");
        aparelho.exibirPagina();
        aparelho.atualizarPagina();
        aparelho.adicionarNovaAba();

        System.out.println("------------->");
    }

}