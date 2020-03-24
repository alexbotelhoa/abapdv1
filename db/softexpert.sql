-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22-Nov-2019 às 16:51
-- Versão do servidor: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `softexpert`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `se_produtos`
--

CREATE TABLE IF NOT EXISTS `se_produtos` (
`pdt_id` int(8) NOT NULL,
  `pdt_ncm` varchar(10) NOT NULL,
  `pdt_desc` varchar(255) NOT NULL,
  `pdt_valor` decimal(8,2) NOT NULL,
  `pdt_pis` decimal(5,2) DEFAULT '0.00',
  `pdt_cofins` decimal(5,2) DEFAULT '0.00',
  `pdt_icms` decimal(5,2) DEFAULT '0.00',
  `pdt_ipi` decimal(5,2) DEFAULT '0.00',
  `pdt_lucro` decimal(5,2) DEFAULT '0.00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Extraindo dados da tabela `se_produtos`
--

INSERT INTO `se_produtos` (`pdt_id`, `pdt_ncm`, `pdt_desc`, `pdt_valor`, `pdt_pis`, `pdt_cofins`, `pdt_icms`, `pdt_ipi`, `pdt_lucro`) VALUES
(26, '9999.99.99', 'Composto Lácteo em Pó Ninho Fases 1 800g', '24.90', '1.47', '2.58', '3.69', '1.59', '7.53'),
(27, '8956.63.22', 'Presunto Fatiado Sadia 200g', '8.49', '10.00', '10.00', '10.00', '10.00', '150.00'),
(28, '9999.99.99', 'Umedecido Mamypoko Aloe Vera Toque Suave com 200 Unidades', '22.99', '3.69', '2.58', '1.47', '1.47', '8.52'),
(29, '9999.99.99', 'Kit de Fraldas Huggies Hiper Supreme Care G - 192 Unidades', '159.90', '3.69', '2.58', '1.47', '1.47', '8.52'),
(30, '9999.99.99', 'Limpa Piso Omo Ação Total Floral 900ml Refil', '7.99', '3.69', '2.58', '1.47', '1.47', '8.52'),
(31, '9999.99.99', 'Fogão de Piso 5 Bocas Cinza Electrolux 76GS Bivolt', '1.50', '3.69', '2.58', '1.47', '1.47', '8.52'),
(32, '9999.99.99', 'Cerveja Heineken Premium Pilsen Lager 350ml 12 Unidades', '38.28', '3.69', '2.58', '1.47', '1.47', '8.52'),
(33, '9999.99.99', 'Relogio Inteligente Mi Band 4 Preto XMSH07HM Xiaomi', '169.90', '3.69', '2.58', '1.47', '1.47', '8.52'),
(34, '9999.99.99', 'Console PlayStation 4 Slim 1TB - Sony', '1.78', '5.55', '5.55', '5.55', '5.55', '5.55'),
(35, '9999.99.99', 'Café em Pó Melitta 500g', '9.39', '4.00', '3.00', '2.00', '8.00', '10.00'),
(36, '9999.99.99', 'Açúcar Refinado União 1Kg', '2.59', '3.00', '5.00', '4.00', '6.00', '30.00'),
(37, '9999.99.99', 'Óleo de Soja Soya 900ml', '3.39', '4.00', '5.00', '7.00', '8.00', '10.00'),
(38, '9999.99.99', 'Óleo de Soja Liza 900ml', '3.69', '3.00', '5.00', '6.00', '2.00', '10.00'),
(39, '9999.99.99', 'Papel Higiênico Folha Dupla 30 Metros Personal Leve 16 Pague 15', '14.99', '2.59', '3.68', '2.54', '2.56', '3.21'),
(40, '9999.99.99', 'Feijão Carioca Tipo 1 Kicaldo 1Kg', '4.29', '1.25', '3.25', '6.58', '7.45', '8.96');

-- --------------------------------------------------------

--
-- Estrutura da tabela `se_sacola`
--

CREATE TABLE IF NOT EXISTS `se_sacola` (
`scl_id` int(11) NOT NULL,
  `scl_pdt_id` int(8) NOT NULL,
  `scl_desconto` decimal(5,2) DEFAULT '0.00',
  `scl_quantidade` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `se_venda`
--

CREATE TABLE IF NOT EXISTS `se_venda` (
`vnd_id` int(8) NOT NULL,
  `vnd_data` int(10) NOT NULL,
  `vnd_total` decimal(8,2) NOT NULL,
  `vnd_repos` decimal(8,2) NOT NULL,
  `vnd_impos` decimal(5,2) NOT NULL,
  `vnd_lucro` decimal(8,2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `se_venda`
--

INSERT INTO `se_venda` (`vnd_id`, `vnd_data`, `vnd_total`, `vnd_repos`, `vnd_impos`, `vnd_lucro`) VALUES
(10, 1574434163, '9859.02', '8126.80', '999.99', '410.47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `se_produtos`
--
ALTER TABLE `se_produtos`
 ADD PRIMARY KEY (`pdt_id`);

--
-- Indexes for table `se_sacola`
--
ALTER TABLE `se_sacola`
 ADD PRIMARY KEY (`scl_id`);

--
-- Indexes for table `se_venda`
--
ALTER TABLE `se_venda`
 ADD PRIMARY KEY (`vnd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `se_produtos`
--
ALTER TABLE `se_produtos`
MODIFY `pdt_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `se_sacola`
--
ALTER TABLE `se_sacola`
MODIFY `scl_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `se_venda`
--
ALTER TABLE `se_venda`
MODIFY `vnd_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
