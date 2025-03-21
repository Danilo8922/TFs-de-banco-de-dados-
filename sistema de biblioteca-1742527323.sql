CREATE TABLE IF NOT EXISTS `Cliente` (
	`id_cliente` int NOT NULL,
	`Nome` varchar(255) NOT NULL,
	`idade` int NOT NULL,
	`data_de_nascimento` varchar(255) NOT NULL,
	PRIMARY KEY (`id_cliente`)
);

CREATE TABLE IF NOT EXISTS `Livro` (
	`id_livro` int NOT NULL,
	`titulo` varchar(255) NOT NULL,
	`autor` varchar(255) NOT NULL,
	PRIMARY KEY (`id_livro`)
);

CREATE TABLE IF NOT EXISTS `funcionario` (
	`id_Funcionario` int NOT NULL,
	`nome_funcionario` varchar(255) NOT NULL,
	PRIMARY KEY (`id_Funcionario`)
);

CREATE TABLE IF NOT EXISTS `emprestimo` (
	`id_emprestimo` int NOT NULL,
	`id_cliente` int NOT NULL,
	`id_Funcionario` int NOT NULL,
	`data_emprestimo` date NOT NULL,
	`data` int NOT NULL,
	`data_devolucao` date NOT NULL,
	PRIMARY KEY (`id_emprestimo`)
);

CREATE TABLE IF NOT EXISTS `item_emprestimo` (
	`id_emprestimo` int AUTO_INCREMENT NOT NULL,
	`id_livro` int NOT NULL
);

ALTER TABLE `Cliente` ADD CONSTRAINT `Cliente_fk0` FOREIGN KEY (`id_cliente`) REFERENCES `emprestimo`(`id_emprestimo`);
ALTER TABLE `Livro` ADD CONSTRAINT `Livro_fk0` FOREIGN KEY (`id_livro`) REFERENCES `item_emprestimo`(`id_emprestimo`);
ALTER TABLE `funcionario` ADD CONSTRAINT `funcionario_fk0` FOREIGN KEY (`id_Funcionario`) REFERENCES `emprestimo`(`id_emprestimo`);
ALTER TABLE `emprestimo` ADD CONSTRAINT `emprestimo_fk0` FOREIGN KEY (`id_emprestimo`) REFERENCES `item_emprestimo`(`id_emprestimo`);
