-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 10-Maio-2023 às 16:49
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

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

CREATE DATABASE littletoothpets;

USE littletoothpets;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pet`
--

CREATE TABLE `tbpet` (
  `idPet` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `raca` varchar(50) DEFAULT NULL,
  `porte` varchar(30) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `peso` decimal(4,3) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pet`
--

INSERT INTO `tbpet` (`idPet`, `nome`, `raca`, `porte`, `idade`, `peso`, `idCliente`) VALUES
(1, 'xemelinho', 'Vira lata', 'Médio', 4, '2.450', 1),
(2, 'amarelovisk', 'Labrador', 'Grande', 3, '8.940', 2),
(3, 'marronzin', 'Pintcher', 'Pequeno', 1, '0.980', 3),
(4, 'jukinha', 'São Bernardo', 'Grande', 5, '9.999', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `tbcliente` (
  `idCliente` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `telefone` text DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `numero` int(4) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `tbcliente` (`idCliente`, `nome`, `cpf`, `telefone`, `cidade`, `numero`, `cep`) VALUES
(1, 'Julho Costa', '000.000.000-00', '(51)91111-1111', 'Cachoeirinha', 111, '11111-111'),
(2, 'Novembra Silva', '222.222.222-22', '(51)91111-1111', 'Gravataí', 222, '22222-222'),
(3, 'Agosto Augusto', '333.333.333-33', '(51)91111-1111', 'Novo Hamburg', 333, '33333-333'),
(4, 'Janeiro Fevereiro', '444.444.444-44', '(51)91111-1111', 'Sapucaia', 444, '44444-444');

-- --------------------------------------------------------


--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pet`
--
ALTER TABLE `tbpet`
  ADD PRIMARY KEY (`idPet`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pet`
--
ALTER TABLE `tbpet`
  MODIFY `idPet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `tbcliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
