# [DIO](www.dio.me) - Trilha Java Básico [^1].

## Instrutor
- [Gleyson Sampaio](https://github.com/glysns)

## POO - Desafio 

### Modelagem e Diagramação de um Componente iPhone

Neste desafio fomos desafiados a modelar e diagramar a representação UML do componente iPhone, abrangendo suas funcionalidades como Reprodutor Musical, Aparelho Telefônico e Navegador na Internet.

#### Vídeo de lançamento do iPhone de 2007 (link abaixo)

[Lançamento iPhone 2007](https://www.youtube.com/watch?v=9ou608QQRq8)
- Minutos relevantes: 00:15 até 00:55

#### Funcionalidades a Modelar
1. **Reprodutor Musical**
   - Métodos: `tocar()`, `pausar()`, `selecionarMusica(String musica)`
2. **Aparelho Telefônico**
   - Métodos: `ligar(String numero)`, `atender()`, `iniciarCorreioVoz()`
3. **Navegador na Internet**
   - Métodos: `exibirPagina(String url)`, `adicionarNovaAba()`, `atualizarPagina()`

## Tecnologia utilizada:
- Back-end
  
- Linguagem Java
  . Programação Orientada a Objetos (POO)

## Exemplo de digrama dbdiagram.io
'''
CREATE TABLE `follows` (
  `following_aparelho_id` integer,
  `followed_iPhone_id` integer,
  `followed_reprodutorMusical_id` integer,
  `followed_navegadorInternet_id` integer
);

CREATE TABLE `aparelho` (
  `id` integer PRIMARY KEY,
  `modelo` varchar(50),
  `AnoLancamento` integer,
  `preco` decimal(10,2),
  `armazenamento` integer
);

CREATE TABLE `iPhone` (
  `id` integer PRIMARY KEY,
  `ligar` varchar(255),
  `atender` varchar(255),
  `iniciarCorreioVoz` varchar(255)
);

CREATE TABLE `reprodutorMusical` (
  `id` integer PRIMARY KEY,
  `nome` varchar(100),
  `tocar` varchar(255),
  `pausar` varchar(255),
  `selecionarMusica` varchar(255)
);

CREATE TABLE `navegadorInternet` (
  `id` integer PRIMARY KEY,
  `nomePagina` varchar(150),
  `exibirPagina` varchar(255),
  `adicionarNovaPagina` varchar(255),
  `atualizarPagina` varchar(255)
);

ALTER TABLE `follows` ADD FOREIGN KEY (`followed_iPhone_id`) REFERENCES `iPhone` (`id`);

ALTER TABLE `follows` ADD FOREIGN KEY (`following_aparelho_id`) REFERENCES `iPhone` (`id`);

ALTER TABLE `aparelho` ADD FOREIGN KEY (`id`) REFERENCES `follows` (`followed_navegadorInternet_id`);

ALTER TABLE `reprodutorMusical` ADD FOREIGN KEY (`id`) REFERENCES `follows` (`followed_navegadorInternet_id`);

ALTER TABLE `follows` ADD FOREIGN KEY (`followed_navegadorInternet_id`) REFERENCES `iPhone` (`id`);

'''

>"Nunca desista dos seus sonhos, tenha esperança e nunca pare de sonhar!"
<!--- Minhas palavras ---> 

[^1]: Desafio de Projeto orientado pelo professor Gleyson Sampaio(DIO).
