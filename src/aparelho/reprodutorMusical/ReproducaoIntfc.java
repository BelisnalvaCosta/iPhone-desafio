package aparelho.reprodutorMusical;

public interface ReproducaoIntfc {

    void tocar();

    void pausar();

    default void selecionarMusica(String nome) {

    }
}
