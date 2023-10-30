-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Out-2023 às 23:27
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wortendb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `iphones`
--

CREATE TABLE `iphones` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `iphones`
--

INSERT INTO `iphones` (`id`, `image`, `url`, `name`, `price`) VALUES
(1, 'https://www.worten.pt/i/81f5027ca1a07b586d2023e2dfaf2fbd62dd19ef', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-128-gb-preto-7851120', 'iPhone 15 APPLE (6.1\'\' - 128 GB - Preto)', 989.99),
(2, 'https://www.worten.pt/i/20ef04c79381a2faebfb7f3f8f45d8863306ab46', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-128-gb-rosa-7851121', 'iPhone 15 APPLE (6.1\'\' - 128 GB - Rosa)', 989.99),
(3, 'https://www.worten.pt/i/fafd88312a1025b62eba7369daae944d28c1cccb', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-128-gb-azul-7851123', 'iPhone 15 APPLE (6.1\'\' - 128 GB - Azul)', 989.99),
(4, 'https://www.worten.pt/i/d92f62e5e85dccbebe7ce6a9b985563e3bef81d4', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-256-gb-titanio-natural-7851156', 'iPhone 15 Pro APPLE (6.1\'\' - 256 GB - Titânio Natural)', 1379.00),
(5, 'https://www.worten.pt/i/79ad7a456c9c37a9db730b66d70dfb252948fbf6', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-256-gb-titanio-azul-7851169', 'iPhone 15 Pro Max APPLE (6.7\'\' - 256 GB - Titânio Azul)', 1499.00),
(6, 'https://www.worten.pt/i/b985db30a90b67eafc7ae3b5a05b719f2a88b761', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-256-gb-titanio-preto-7851154', 'iPhone 15 Pro APPLE (6.1\'\' - 256 GB - Titânio Preto)', 1379.00),
(7, 'https://www.worten.pt/i/3f6ad379ff9f886e373efb92addae230d0616368', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-256-gb-titanio-preto-7851166', 'iPhone 15 Pro Max APPLE (6.7\'\' - 256 GB - Titânio Preto)', 1600.00),
(8, 'https://www.worten.pt/i/6dfdd0ebf9d179226de6b8a23ce2c7e67dda91cd', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-256-gb-titanio-natural-7851168', 'iPhone 15 Pro Max APPLE (6.7\'\' - 256 GB - Titânio Natural)', 1600.00),
(9, 'https://www.worten.pt/i/d92f62e5e85dccbebe7ce6a9b985563e3bef81d4', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-128-gb-titanio-natural-7851152', 'iPhone 15 Pro APPLE (6.1\'\' - 128 GB - Titânio Natural)', 1300.00),
(10, 'https://www.worten.pt/i/0536d3b30d77a069a2c016065728ec0add144d28', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-256-gb-titanio-branco-7851167', 'iPhone 15 Pro Max APPLE (6.7\'\' - 256 GB - Titânio Branco)', 1600.00),
(11, 'https://www.worten.pt/i/717ba39a0917855e02c31216ef01947c933f1731', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-128-gb-titanio-azul-7851153', 'iPhone 15 Pro APPLE (6.1\'\' - 128 GB - Titânio Azul)', 1249.00),
(12, 'https://www.worten.pt/i/30087053ea7d3637a97d811ac9943578dd4caf0d', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-256-gb-titanio-branco-7851155', 'iPhone 15 Pro APPLE (6.1\'\' - 256 GB - Titânio Branco)', 1379.00),
(13, 'https://www.worten.pt/i/3f6ad379ff9f886e373efb92addae230d0616368', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-512-gb-titanio-preto-7851170', 'iPhone 15 Pro Max APPLE (6.7\'\' - 512 GB - Titânio Preto)', 1749.00),
(14, 'https://www.worten.pt/i/b985db30a90b67eafc7ae3b5a05b719f2a88b761', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-128-gb-titanio-preto-7851150', 'iPhone 15 Pro APPLE (6.1\'\' - 128 GB - Titânio Preto)', 1300.00),
(15, 'https://www.worten.pt/i/717ba39a0917855e02c31216ef01947c933f1731', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-256-gb-titanio-azul-7851157', 'iPhone 15 Pro APPLE (6.1\'\' - 256 GB - Titânio Azul)', 1450.00),
(16, 'https://www.worten.pt/i/512c97d27d290ca5be901f3f742b5dc6763960ab', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-128-gb-preto-7851135', 'iPhone 15 Plus APPLE (6.7\'\' - 128 GB - Preto)', 1139.00),
(17, 'https://www.worten.pt/i/c61691c7e9a8a2e5f34d9320cfa863a7ba4e33f2', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-128-gb-rosa-7851136', 'iPhone 15 Plus APPLE (6.7\'\' - 128 GB - Rosa)', 1139.00),
(18, 'https://www.worten.pt/i/969d620a645a1d349ef5e05a73e05014fd7d0831', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-128-gb-azul-7851138', 'iPhone 15 Plus APPLE (6.7\'\' - 128 GB - Azul)', 1139.00),
(19, 'https://www.worten.pt/i/79ad7a456c9c37a9db730b66d70dfb252948fbf6', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-512-gb-titanio-azul-7851173', 'iPhone 15 Pro Max APPLE (6.7\'\' - 512 GB - Titânio Azul)', 1749.00),
(20, 'https://www.worten.pt/i/0536d3b30d77a069a2c016065728ec0add144d28', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-512-gb-titanio-branco-7851171', 'iPhone 15 Pro Max APPLE (6.7\'\' - 512 GB - Titânio Branco)', 1749.00),
(21, 'https://www.worten.pt/i/30087053ea7d3637a97d811ac9943578dd4caf0d', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-128-gb-titanio-branco-7851151', 'iPhone 15 Pro APPLE (6.1\'\' - 128 GB - Titânio Branco)', 1300.00),
(22, 'https://www.worten.pt/i/81f5027ca1a07b586d2023e2dfaf2fbd62dd19ef', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-256-gb-preto-7851125', 'iPhone 15 APPLE (6.1\'\' - 256 GB - Preto)', 1119.00),
(23, 'https://www.worten.pt/i/fafd88312a1025b62eba7369daae944d28c1cccb', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-256-gb-azul-7851128', 'iPhone 15 APPLE (6.1\'\' - 256 GB - Azul)', 1119.00),
(24, 'https://www.worten.pt/i/ab9d8d79011010faa6b2493a55a5b5639ada005e', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-128-gb-verde-7851124', 'iPhone 15 APPLE (6.1\'\' - 128 GB - Verde)', 989.99),
(25, 'https://www.worten.pt/i/512c97d27d290ca5be901f3f742b5dc6763960ab', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-256-gb-preto-7851140', 'iPhone 15 Plus APPLE (6.7\'\' - 256 GB - Preto)', 1269.00),
(26, 'https://www.worten.pt/i/6dfdd0ebf9d179226de6b8a23ce2c7e67dda91cd', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-1-tb-titanio-natural-7851176', 'iPhone 15 Pro Max APPLE (6.7\'\' - 1 TB - Titânio Natural)', 1999.00),
(27, 'https://www.worten.pt/i/c61691c7e9a8a2e5f34d9320cfa863a7ba4e33f2', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-256-gb-rosa-7851141', 'iPhone 15 Plus APPLE (6.7\'\' - 256 GB - Rosa)', 1269.00),
(28, 'https://www.worten.pt/i/79ad7a456c9c37a9db730b66d70dfb252948fbf6', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-1-tb-titanio-azul-7851177', 'iPhone 15 Pro Max APPLE (6.7\'\' - 1 TB - Titânio Azul)', 1999.00),
(29, 'https://www.worten.pt/i/6dfdd0ebf9d179226de6b8a23ce2c7e67dda91cd', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-512-gb-titanio-natural-7851172', 'iPhone 15 Pro Max APPLE (6.7\'\' - 512 GB - Titânio Natural)', 1749.00),
(30, 'https://www.worten.pt/i/0536d3b30d77a069a2c016065728ec0add144d28', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-1-tb-titanio-branco-7851175', 'iPhone 15 Pro Max APPLE (6.7\'\' - 1 TB - Titânio Branco)', 1999.00),
(31, 'https://www.worten.pt/i/3f6ad379ff9f886e373efb92addae230d0616368', 'https://www.worten.pt/produtos/iphone-15-pro-max-apple-6-7-1-tb-titanio-preto-7851174', 'iPhone 15 Pro Max APPLE (6.7\'\' - 1 TB - Titânio Preto)', 1999.00),
(32, 'https://www.worten.pt/i/20ef04c79381a2faebfb7f3f8f45d8863306ab46', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-256-gb-rosa-7851126', 'iPhone 15 APPLE (6.1\'\' - 256 GB - Rosa)', 1119.00),
(33, 'https://www.worten.pt/i/969d620a645a1d349ef5e05a73e05014fd7d0831', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-256-gb-azul-7851143', 'iPhone 15 Plus APPLE (6.7\'\' - 256 GB - Azul)', 1269.00),
(34, 'https://www.worten.pt/i/30087053ea7d3637a97d811ac9943578dd4caf0d', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-512-gb-titanio-branco-7851159', 'iPhone 15 Pro APPLE (6.1\'\' - 512 GB - Titânio Branco)', 1629.00),
(35, 'https://www.worten.pt/i/29e9aa5fa8ccfc282e7a50a0ac0e6b08c703728b', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-128-gb-amarelo-7851122', 'iPhone 15 APPLE (6.1\'\' - 128 GB - Amarelo)', 989.99),
(36, 'https://www.worten.pt/i/20ef04c79381a2faebfb7f3f8f45d8863306ab46', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-512-gb-rosa-7851131', 'iPhone 15 APPLE (6.1\'\' - 512 GB - Rosa)', 1369.00),
(37, 'https://www.worten.pt/i/717ba39a0917855e02c31216ef01947c933f1731', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-512-gb-titanio-azul-7851161', 'iPhone 15 Pro APPLE (6.1\'\' - 512 GB - Titânio Azul)', 1629.00),
(38, 'https://www.worten.pt/i/d92f62e5e85dccbebe7ce6a9b985563e3bef81d4', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-1-tb-titanio-natural-7851164', 'iPhone 15 Pro APPLE (6.1\'\' - 1 TB - Titânio Natural)', 1879.00),
(39, 'https://www.worten.pt/i/81f5027ca1a07b586d2023e2dfaf2fbd62dd19ef', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-512-gb-preto-7851130', 'iPhone 15 APPLE (6.1\'\' - 512 GB - Preto)', 1369.00),
(40, 'https://www.worten.pt/i/b985db30a90b67eafc7ae3b5a05b719f2a88b761', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-1-tb-titanio-preto-7851162', 'iPhone 15 Pro APPLE (6.1\'\' - 1 TB - Titânio Preto)', 1879.00),
(41, 'https://www.worten.pt/i/d92f62e5e85dccbebe7ce6a9b985563e3bef81d4', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-512-gb-titanio-natural-7851160', 'iPhone 15 Pro APPLE (6.1\'\' - 512 GB - Titânio Natural)', 1629.00),
(42, 'https://www.worten.pt/i/b985db30a90b67eafc7ae3b5a05b719f2a88b761', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-512-gb-titanio-preto-7851158', 'iPhone 15 Pro APPLE (6.1\'\' - 512 GB - Titânio Preto)', 1629.00),
(43, 'https://www.worten.pt/i/ab9d8d79011010faa6b2493a55a5b5639ada005e', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-256-gb-verde-7851129', 'iPhone 15 APPLE (6.1\'\' - 256 GB - Verde)', 1119.00),
(44, 'https://www.worten.pt/i/92885e6000427d0ea763f25b2e895836f47adf77', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-128-gb-verde-7851139', 'iPhone 15 Plus APPLE (6.7\'\' - 128 GB - Verde)', 1139.00),
(45, 'https://www.worten.pt/i/c8b32bdd6b87a12588bb4789da7972b7664aa23b', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-256-gb-amarelo-7851142', 'iPhone 15 Plus APPLE (6.7\'\' - 256 GB - Amarelo)', 1721.64),
(46, 'https://www.worten.pt/i/30087053ea7d3637a97d811ac9943578dd4caf0d', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-1-tb-titanio-branco-7851163', 'iPhone 15 Pro APPLE (6.1\'\' - 1 TB - Titânio Branco)', 1879.00),
(47, 'https://www.worten.pt/i/fafd88312a1025b62eba7369daae944d28c1cccb', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-512-gb-azul-7851133', 'iPhone 15 APPLE (6.1\'\' - 512 GB - Azul)', 1369.00),
(48, 'https://www.worten.pt/i/92885e6000427d0ea763f25b2e895836f47adf77', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-256-gb-verde-7851144', 'iPhone 15 Plus APPLE (6.7\'\' - 256 GB - Verde)', 1269.00),
(49, 'https://www.worten.pt/i/717ba39a0917855e02c31216ef01947c933f1731', 'https://www.worten.pt/produtos/iphone-15-pro-apple-6-1-1-tb-titanio-azul-7851165', 'iPhone 15 Pro APPLE (6.1\'\' - 1 TB - Titânio Azul)', 1879.00),
(50, 'https://www.worten.pt/i/29e9aa5fa8ccfc282e7a50a0ac0e6b08c703728b', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-256-gb-amarelo-7851127', 'iPhone 15 APPLE (6.1\'\' - 256 GB - Amarelo)', 1119.00),
(51, 'https://www.worten.pt/i/c61691c7e9a8a2e5f34d9320cfa863a7ba4e33f2', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-512-gb-rosa-7851146', 'iPhone 15 Plus APPLE (6.7\'\' - 512 GB - Rosa)', 1519.00),
(52, 'https://www.worten.pt/i/ab9d8d79011010faa6b2493a55a5b5639ada005e', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-512-gb-verde-7851134', 'iPhone 15 APPLE (6.1\'\' - 512 GB - Verde)', 1369.00),
(53, 'https://www.worten.pt/i/c8b32bdd6b87a12588bb4789da7972b7664aa23b', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-128-gb-amarelo-7851137', 'iPhone 15 Plus APPLE (6.7\'\' - 128 GB - Amarelo)', 1139.00),
(54, 'https://www.worten.pt/i/969d620a645a1d349ef5e05a73e05014fd7d0831', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-512-gb-azul-7851148', 'iPhone 15 Plus APPLE (6.7\'\' - 512 GB - Azul)', 1519.00),
(55, 'https://www.worten.pt/i/29e9aa5fa8ccfc282e7a50a0ac0e6b08c703728b', 'https://www.worten.pt/produtos/iphone-15-apple-6-1-512-gb-amarelo-7851132', 'iPhone 15 APPLE (6.1\'\' - 512 GB - Amarelo)', 1369.00),
(56, 'https://www.worten.pt/i/512c97d27d290ca5be901f3f742b5dc6763960ab', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-512-gb-preto-7851145', 'iPhone 15 Plus APPLE (6.7\'\' - 512 GB - Preto)', 1519.00),
(57, 'https://www.worten.pt/i/92885e6000427d0ea763f25b2e895836f47adf77', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-512-gb-verde-7851149', 'iPhone 15 Plus APPLE (6.7\'\' - 512 GB - Verde)', 1519.00),
(58, 'https://www.worten.pt/i/c8b32bdd6b87a12588bb4789da7972b7664aa23b', 'https://www.worten.pt/produtos/iphone-15-plus-apple-6-7-512-gb-amarelo-7851147', 'iPhone 15 Plus APPLE (6.7\'\' - 512 GB - Amarelo)', 1519.00),
(59, 'https://www.worten.pt/i/5669869bf122b6a6275a9c9f928443a3604065b0', 'https://www.worten.pt/produtos/iphone-14-pro-max-apple-6-7-256-gb-roxo-escuro-7644350', 'iPhone 14 Pro Max APPLE (6.7\'\' - 256 GB - Roxo Escuro)', 1469.78),
(60, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-model-unselect-gallery-1-202209', 'https://www.apple.com/pt/shop/buy-iphone/iphone-14', 'iPhone 10 Pro Max APPLE (6.7\'\' - 256 GB - Roxo Escuro)', 999.99);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `iphones`
--
ALTER TABLE `iphones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `iphones`
--
ALTER TABLE `iphones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
