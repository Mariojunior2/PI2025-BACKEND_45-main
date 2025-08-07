-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/07/2025 às 14:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste_banco`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` enum('academic','materials','calendar') NOT NULL,
  `priority` enum('low','medium','high') NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `academicType` enum('homework','exam','deadline','event') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `notificacoes`
--

INSERT INTO `notificacoes` (`id`, `title`, `message`, `date`, `time`, `type`, `priority`, `read`, `academicType`) VALUES
(1, 'Entrega de Trabalho', 'Lembrete: O trabalho final de Programação Web deve ser entregue hoje até às 23:59.', '2025-04-13', '09:30:00', 'academic', 'high', 0, 'deadline'),
(2, 'Prova Amanhã', 'Não se esqueça da prova de Banco de Dados amanhã às 10:00 na sala 302.', '2025-04-12', '14:45:00', 'academic', 'high', 0, 'exam'),
(3, 'Material Disponível', 'O professor de Algoritmos disponibilizou o material para a próxima aula.', '2025-04-11', '16:20:00', 'materials', 'medium', 0, 'homework');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(10) UNSIGNED NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `idade` tinyint(3) UNSIGNED NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('ativo','inativo') NOT NULL DEFAULT 'ativo',
  `criado_em` datetime NOT NULL DEFAULT current_timestamp(),
  `atualizado_em` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `matricula`, `idade`, `foto`, `email`, `nome`, `senha`, `data_criacao`, `status`, `criado_em`, `atualizado_em`, `admin`) VALUES
(1, 'ADM001', 30, NULL, 'admin@email.com', 'Administrador do Sistema', '$2y$10$ExemploDeHashAdmin', '2025-05-30 09:12:35', 'ativo', '2025-05-30 09:12:35', '2025-05-30 09:12:35', 1),
(2, '2023001', 20, NULL, 'aluno1@email.com', 'João Silva', '$2y$10$ExemploDeHash123', '2025-05-30 09:12:35', 'ativo', '2025-05-30 09:12:35', '2025-05-30 09:12:35', 0),
(3, '2023002', 21, NULL, 'aluno2@email.com', 'Maria Oliveira', '$2y$10$ExemploDeHash456', '2025-05-30 09:12:35', 'ativo', '2025-05-30 09:12:35', '2025-05-30 09:12:35', 0),
(4, '2023003', 22, NULL, 'aluno3@email.com', 'Carlos Pereira', '$2y$10$ExemploDeHash789', '2025-05-30 09:12:35', 'ativo', '2025-05-30 09:12:35', '2025-05-30 09:12:35', 0),
(5, '2023004', 19, NULL, 'aluno4@email.com', 'Ana Santos', '$2y$10$ExemploDeHashABC', '2025-05-30 09:12:35', 'ativo', '2025-05-30 09:12:35', '2025-05-30 09:12:35', 0),
(6, '2023005', 23, NULL, 'aluno5@email.com', 'Pedro Costa', '$2y$10$ExemploDeHashDEF', '2025-05-30 09:12:35', 'ativo', '2025-05-30 09:12:35', '2025-05-30 09:12:35', 0),
(7, '2023006', 20, NULL, 'aluno6@email.com', 'Juliana Almeida', '$2y$10$ExemploDeHashGHI', '2025-05-30 09:12:35', 'ativo', '2025-05-30 09:12:35', '2025-05-30 09:12:35', 0),
(8, '2023007', 21, NULL, 'aluno7@email.com', 'Fernando Lima', '$2y$10$ExemploDeHashJKL', '2025-05-30 09:12:35', 'ativo', '2025-05-30 09:12:35', '2025-05-30 09:12:35', 0),
(9, '2023008', 22, NULL, 'aluno8@email.com', 'Mariana Ribeiro', '$2y$10$ExemploDeHashMNO', '2025-05-30 09:12:35', 'ativo', '2025-05-30 09:12:35', '2025-05-30 09:12:35', 0),
(10, '2023009', 19, NULL, 'aluno9@email.com', 'Ricardo Gomes', '$2y$10$ExemploDeHashPQR', '2025-05-30 09:12:35', 'ativo', '2025-05-30 09:12:35', '2025-05-30 09:12:35', 0),
(11, 'U20256959', 0, NULL, 'mario.junior2@alunos.sc.senac.br', 'Mario Gonçalves', '$2y$10$V/PUfy1ie4Nw3dyUrAgQP.Tdh8W7/.6DMlrY65oQz1BvnfZkSqqve', '2025-07-04 09:12:24', 'ativo', '2025-07-04 09:12:24', '2025-07-04 09:12:24', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `usuario_matricula_unique` (`matricula`),
  ADD UNIQUE KEY `usuario_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
