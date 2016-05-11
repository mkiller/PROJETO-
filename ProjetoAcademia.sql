-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.17 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para academia
DROP DATABASE IF EXISTS `academia`;
CREATE DATABASE IF NOT EXISTS `academia` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `academia`;


-- Copiando estrutura para tabela academia.admistrador
DROP TABLE IF EXISTS `admistrador`;
CREATE TABLE IF NOT EXISTS `admistrador` (
  `adm_id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_nome` char(50) NOT NULL,
  `adm_login` varchar(15) NOT NULL,
  `adm_senha` varchar(15) NOT NULL,
  `adm_email` varchar(50) NOT NULL,
  `adm_endereco` varchar(50) NOT NULL,
  `adm_numero` varchar(15) NOT NULL,
  `adm_cpf` int(11) NOT NULL,
  `adm_telefone` int(11) NOT NULL,
  `adm_dataDeNascimento` int(11) NOT NULL,
  `adm_sexo` char(1) NOT NULL,
  `adm_tipoDeUsuario` int(11) NOT NULL,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela academia.admistrador: ~0 rows (aproximadamente)
DELETE FROM `admistrador`;
/*!40000 ALTER TABLE `admistrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `admistrador` ENABLE KEYS */;


-- Copiando estrutura para tabela academia.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nome` char(50) NOT NULL,
  `cli_login` varchar(15) DEFAULT NULL,
  `cli_senha` varchar(15) DEFAULT NULL,
  `cli_email` varchar(50) NOT NULL,
  `cli_endereco` varchar(50) NOT NULL,
  `cli_numero` int(20) NOT NULL,
  `cli_cpf` varchar(50) NOT NULL,
  `cli_telefone` int(20) NOT NULL,
  `cli_dataDeNascimento` int(20) NOT NULL,
  `cli_sexo` char(10) NOT NULL,
  `cli_tipoDeUsuario` int(20) DEFAULT NULL,
  PRIMARY KEY (`cli_id`),
  UNIQUE KEY `cli_login` (`cli_login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela academia.cliente: ~3 rows (aproximadamente)
DELETE FROM `cliente`;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`cli_id`, `cli_nome`, `cli_login`, `cli_senha`, `cli_email`, `cli_endereco`, `cli_numero`, `cli_cpf`, `cli_telefone`, `cli_dataDeNascimento`, `cli_sexo`, `cli_tipoDeUsuario`) VALUES
	(2, 'Gabriel Neves', NULL, NULL, 'gabriel-neves97@hotmail.com', 'Rua Murilo Marcondes', 74, '383553158', 74, 27061997, 'Masculino', NULL),
	(3, 'teste', NULL, NULL, 'teste@', 'teste', 11, '1234', 11, 1235, 'Feminino', NULL),
	(4, 'g', NULL, NULL, 'g', 'g', 12, '121', 12, 413432, 'Masculino', NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


-- Copiando estrutura para tabela academia.funcionarios
DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `fun_id` int(11) NOT NULL AUTO_INCREMENT,
  `fun_nome` char(50) NOT NULL,
  `fun_login` varchar(15) NOT NULL,
  `fun_senha` varchar(15) NOT NULL,
  `fun_email` varchar(50) NOT NULL,
  `fun_endereco` varchar(50) NOT NULL,
  `fun_numero` int(11) NOT NULL,
  `fun_cpf` int(11) NOT NULL,
  `fun_telefone` int(11) NOT NULL,
  `fun_dataDeNascimento` int(11) NOT NULL,
  `fun_sexo` char(1) NOT NULL,
  `fun_tipoDeUsuario` int(11) NOT NULL,
  PRIMARY KEY (`fun_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela academia.funcionarios: ~0 rows (aproximadamente)
DELETE FROM `funcionarios`;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;


-- Copiando estrutura para tabela academia.produto
DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_nome` char(50) NOT NULL,
  `prod_marca` varchar(50) NOT NULL,
  `prod_fornecedor` varchar(50) NOT NULL,
  `prod_preco` int(11) NOT NULL,
  `prod_desconto` int(11) NOT NULL,
  `prod_estoque` int(11) NOT NULL,
  `prod_validade` int(11) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela academia.produto: ~0 rows (aproximadamente)
DELETE FROM `produto`;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
