-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/12/2025 às 22:03
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_livros`
--

CREATE TABLE `cadastro_livros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `curso` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `contato` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro_livros`
--

INSERT INTO `cadastro_livros` (`id`, `titulo`, `autor`, `curso`, `tipo`, `contato`) VALUES
(9, 'Analise e desenvolvimento de sistemas ', 'daniel brandao ', 'ads', 'Troca', 'lucasheitor@gmail.com'),
(10, 'Analise e desenvolvimento de sistemas ', 'daniel brandao ', 'ads', 'Troca', 'lucasheitor@gmail.com'),
(11, 'Analise e desenvolvimento de sistemas ', 'daniel brandao ', 'ads', 'Doação', 'lucasheitor@gmail.com'),
(12, 'Analise e desenvolvimento de sistemas ', 'daniel brandao ', 'ads', 'Troca', 'lucasheitor@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro_livros`
--
ALTER TABLE `cadastro_livros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro_livros`
--
ALTER TABLE `cadastro_livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
