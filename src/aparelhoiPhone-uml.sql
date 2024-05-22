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
