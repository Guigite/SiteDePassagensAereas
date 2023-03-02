-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Set-2022 às 16:57
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aeroporto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `ID` int(2) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Chave` int(6) NOT NULL,
  `Senha` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`ID`, `Nome`, `Chave`, `Senha`) VALUES
(1, 'Luiz Augusto', 290705, 'asulaenossa'),
(2, 'Guilherme Cunha', 110704, 'brasileirao11'),
(3, 'Alvaro Muniz', 240304, 'ficavp'),
(4, 'Henrique Lobo', 130705, 'ficaigorgomes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastrocli`
--

CREATE TABLE `cadastrocli` (
  `Nome` varchar(100) NOT NULL,
  `Senha` varchar(20) NOT NULL,
  `EnderecoCompleto` varchar(100) NOT NULL,
  `Telefones` varchar(17) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `LocalDeTrabalho` varchar(100) NOT NULL,
  `EnderecoComercial` varchar(100) NOT NULL,
  `DataDeNascimento` varchar(10) NOT NULL,
  `CPF` varchar(12) NOT NULL,
  `RG` varchar(11) NOT NULL,
  `DataDeemissao` varchar(10) NOT NULL,
  `UF` varchar(2) NOT NULL,
  `ID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastrocli`
--

INSERT INTO `cadastrocli` (`Nome`, `Senha`, `EnderecoCompleto`, `Telefones`, `Email`, `LocalDeTrabalho`, `EnderecoComercial`, `DataDeNascimento`, `CPF`, `RG`, `DataDeemissao`, `UF`, `ID`) VALUES
('Luiz Augusto', '12345678', 'Avenida Luciano Neves', '119633230', 'luizaugusto@gmail.com', 'Nenhum', 'Nenhum', '29/07/05', '52114737911', '5013845818', '12/08/05', 'SP', 1),
('Guilherme Cunha', '98765432', 'Avenida Morumbi', '912457896', 'guilhermecunha@gmail.com', 'Nenhum', 'Nenhum', '01/07/04', '98765432101', '987654321', '15/05/05', 'SP', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `registroc`
--

CREATE TABLE `registroc` (
  `Nome` varchar(100) NOT NULL,
  `Nascimento` varchar(10) NOT NULL,
  `Numero` varchar(16) NOT NULL,
  `CSC` int(3) NOT NULL,
  `Vencimento` varchar(7) NOT NULL,
  `Endereço` varchar(100) NOT NULL,
  `CEP` int(8) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `ID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `registroc`
--

INSERT INTO `registroc` (`Nome`, `Nascimento`, `Numero`, `CSC`, `Vencimento`, `Endereço`, `CEP`, `CPF`, `ID`) VALUES
('Luiz Augusto', '29/07/05', '1478547896583652', 123, '12/2025', 'Avenida Fala Zezé', 4888021, '41993426809', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `voos`
--

CREATE TABLE `voos` (
  `voo` varchar(6) NOT NULL,
  `partida` varchar(2) NOT NULL,
  `destino` varchar(2) NOT NULL,
  `datas` date NOT NULL,
  `horario` varchar(5) NOT NULL,
  `aeroportoS` varchar(50) NOT NULL,
  `aeroportoC` varchar(50) NOT NULL,
  `capacidade` int(3) NOT NULL DEFAULT 100,
  `id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `voos`
--

INSERT INTO `voos` (`voo`, `partida`, `destino`, `datas`, `horario`, `aeroportoS`, `aeroportoC`, `capacidade`, `id`) VALUES
('HKJ547', 'SP', 'RJ', '2022-09-26', '10:30', 'CGH - Congonhas', 'GIG - Rio Galeão', 100, 51);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `cadastrocli`
--
ALTER TABLE `cadastrocli`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `registroc`
--
ALTER TABLE `registroc`
  ADD PRIMARY KEY (`ID`,`CPF`);

--
-- Índices para tabela `voos`
--
ALTER TABLE `voos`
  ADD PRIMARY KEY (`id`,`voo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administradores`
--
ALTER TABLE `administradores`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cadastrocli`
--
ALTER TABLE `cadastrocli`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `registroc`
--
ALTER TABLE `registroc`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `voos`
--
ALTER TABLE `voos`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
