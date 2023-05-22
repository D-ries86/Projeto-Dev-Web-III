-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/05/2023 às 07:21
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `littletoothpets`
--
CREATE DATABASE IF NOT EXISTS `littletoothpets` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `littletoothpets`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbcliente`
--

DROP TABLE IF EXISTS `tbcliente`;
CREATE TABLE `tbcliente` (
  `idCliente` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `telefone` text DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `numero` int(4) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tbcliente`
--

INSERT INTO `tbcliente` (`idCliente`, `nome`, `cpf`, `telefone`, `cidade`, `numero`, `cep`) VALUES
(1, 'Julho Costa', '000.000.000-00', '(51)91111-1111', 'Cachoeirinha', 111, '11111-111'),
(2, 'Novembra Silva', '222.222.222-22', '(51)91111-1111', 'Gravataí', 222, '22222-222'),
(3, 'Agosto Augusto', '333.333.333-33', '(51)91111-1111', 'Novo Hamburg', 333, '33333-333'),
(4, 'Janeiro Fevereiro', '444.444.444-44', '(51)91111-1111', 'Sapucaia', 444, '44444-444');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbpet`
--

DROP TABLE IF EXISTS `tbpet`;
CREATE TABLE `tbpet` (
  `idPet` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `raca` varchar(50) DEFAULT NULL,
  `porte` varchar(30) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `peso` decimal(4,3) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tbpet`
--

INSERT INTO `tbpet` (`idPet`, `nome`, `raca`, `porte`, `idade`, `peso`, `descricao`, `idCliente`) VALUES
(1, 'xemelinho', 'Vira lata', 'Médio', 4, 2.450, NULL, 1),
(2, 'amarelovisk', 'Labrador', 'Grande', 3, 8.940, NULL, 2),
(3, 'marronzin', 'Pintcher', 'Pequeno', 1, 0.980, NULL, 3),
(4, 'jukinha', 'São Bernardo', 'Grande', 5, 9.999, NULL, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices de tabela `tbpet`
--
ALTER TABLE `tbpet`
  ADD PRIMARY KEY (`idPet`),
  ADD KEY `fk_tbpet_tbcliente` (`idCliente`) USING BTREE;

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbpet`
--
ALTER TABLE `tbpet`
  MODIFY `idPet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
