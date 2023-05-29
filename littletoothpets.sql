-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/05/2023 às 11:30
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

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbcliente`
--

CREATE TABLE `tbcliente` (
  `idCliente` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `telefone` text NOT NULL,
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
(4, 'Janeiro Fevereiro', '444.444.444-44', '(51)91111-1111', 'Sapucaia', 444, '44444-444'),
(10, 'edvaldo', '465.4887.987.89', '(22)32121-4312', 'Alvorada', 52, '59652-220'),
(11, 'edvaldos', '465.4887.987.89', '(22)32121-4312', 'Alvorada', 52, '59652-220'),
(12, 'edvaldof', '465.4887.987.89', '(22)32121-4312', 'Alvorada', 52, '59652-220'),
(13, 'edvaldofs', '465.4887.987.89', '(22)32121-4312', 'Alvorada', 52, '59652-220'),
(14, 'Janeiro Fevereiro', '444.444.444-44', '(51)91111-1111', 'Sapucaia', 444, '44444-444'),
(15, 'Agosto Augusto', '333.333.333-33', '(51)91111-1111', 'Novo Hamburg', 333, '33333-333'),
(16, 'Jose', '465.4887.987.89', '(51)66666-6666', 'Sapucaia', 14, '59652-220'),
(17, 'edvaldof', '465.4887.987.89', '(22)32121-4312', 'Alvorada', 52, '59652-220'),
(18, 'edvaldof', '465.4887.987.89', '(22)32121-4312', 'Alvorada', 52, '59652-220'),
(19, 'Julho Costa', '000.000.000-00', '(51)91111-1111', 'Cachoeirinha', 111, '11111-112');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbpet`
--

CREATE TABLE `tbpet` (
  `idPet` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `raca` varchar(50) DEFAULT NULL,
  `porte` varchar(30) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `peso` decimal(4,3) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tbpet`
--

INSERT INTO `tbpet` (`idPet`, `nome`, `raca`, `porte`, `idade`, `peso`, `descricao`) VALUES
(8, 'amarelinho', 'bulldog', 'pequeno', 5, 3.000, '...'),
(9, 'vermelhinho', 'bulldog', 'pequeno', 5, 3.000, '...'),
(16, 'amarelinho', 'bulldog', 'pequeno', 5, 3.000, '...'),
(17, 'vermelhinho', 'bulldog', 'pequeno', 5, 3.000, '...'),
(19, 'vermelhinho', 'bulldog', 'pequeno', 5, 3.000, '...'),
(20, 'amarelinho', 'bulldog', 'pequeno', 5, 3.000, '...'),
(21, 'vermelhinho', 'bulldog', 'pequeno', 5, 3.000, '...'),
(22, 'amarelinho', 'bulldog', 'pequeno', 5, 3.000, '...'),
(24, 'vermelhinho', 'bulldog', 'pequeno', 5, 3.000, '...'),
(25, 'azulzin', 'bulldog', 'pequeno', 5, 3.000, '...'),
(26, 'vermelhinho', 'bulldog', 'pequeno', 5, 3.000, '...'),
(28, 'vermelhinho2', 'bulldog', 'pequeno', 5, 3.000, 'editado\r\n');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbusuario`
--

CREATE TABLE `tbusuario` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `senha` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tbusuario`
--

INSERT INTO `tbusuario` (`idUsuario`, `nome`, `senha`) VALUES
(1, 'Antenor', 'ant123'),
(2, 'Josivaldo', 'jos123');

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
  ADD PRIMARY KEY (`idPet`);

--
-- Índices de tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `tbpet`
--
ALTER TABLE `tbpet`
  MODIFY `idPet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
