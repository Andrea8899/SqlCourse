-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Apr 13, 2022 alle 15:28
-- Versione del server: 10.4.18-MariaDB
-- Versione PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FullStackJavaAcademy`
--
CREATE DATABASE IF NOT EXISTS `FullStackJavaAcademy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `FullStackJavaAcademy`;

-- --------------------------------------------------------

--
-- Struttura della tabella `clientiRicambi`
--

DROP TABLE IF EXISTS `clientiRicambi`;
CREATE TABLE IF NOT EXISTS `clientiRicambi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codiceCliente` varchar(4) NOT NULL,
  `nomeCliente` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codiceCliente` (`codiceCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `immobili`
--

DROP TABLE IF EXISTS `immobili`;
CREATE TABLE IF NOT EXISTS `immobili` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codice` varchar(4) NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `superficie` double NOT NULL,
  `n_vani` int(11) NOT NULL,
  `anno_fabbr` int(11) NOT NULL,
  `annessi` varchar(40) DEFAULT NULL,
  `prezzo` double NOT NULL,
  `idProp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idProp` (`idProp`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `immobili`
--

INSERT INTO `immobili` (`id`, `codice`, `tipo`, `superficie`, `n_vani`, `anno_fabbr`, `annessi`, `prezzo`, `idProp`) VALUES(1, '2435', 'Villa', 300, 6, 2018, 'Garage', 120000, 3);
INSERT INTO `immobili` (`id`, `codice`, `tipo`, `superficie`, `n_vani`, `anno_fabbr`, `annessi`, `prezzo`, `idProp`) VALUES(2, '9035', 'Appartamento', 120, 6, 2020, 'Box', 80000, 1);
INSERT INTO `immobili` (`id`, `codice`, `tipo`, `superficie`, `n_vani`, `anno_fabbr`, `annessi`, `prezzo`, `idProp`) VALUES(3, '8841', 'Appartamento', 80, 6, 2021, 'Box', 90000, 2);
INSERT INTO `immobili` (`id`, `codice`, `tipo`, `superficie`, `n_vani`, `anno_fabbr`, `annessi`, `prezzo`, `idProp`) VALUES(4, '0203', 'Villa', 400, 6, 2022, 'Garage', 220000, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `impiegati`
--

DROP TABLE IF EXISTS `impiegati`;
CREATE TABLE IF NOT EXISTS `impiegati` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `livello` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `impiegati`
--

INSERT INTO `impiegati` (`id`, `nome`, `livello`) VALUES(1, 'Mario Rossi', 3);
INSERT INTO `impiegati` (`id`, `nome`, `livello`) VALUES(2, 'Anna Bianchi', 1);
INSERT INTO `impiegati` (`id`, `nome`, `livello`) VALUES(3, 'Gianni Corvi', 2);
INSERT INTO `impiegati` (`id`, `nome`, `livello`) VALUES(4, 'Enzo Ferrari', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `libri`
--

DROP TABLE IF EXISTS `libri`;
CREATE TABLE IF NOT EXISTS `libri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `libri`
--

INSERT INTO `libri` (`id`, `titolo`) VALUES(4, 'Il signore degli anelli');
INSERT INTO `libri` (`id`, `titolo`) VALUES(5, 'Harry Potter');
INSERT INTO `libri` (`id`, `titolo`) VALUES(6, '1984');
INSERT INTO `libri` (`id`, `titolo`) VALUES(7, 'Padre ricco Padre povero');

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

DROP TABLE IF EXISTS `ordini`;
CREATE TABLE IF NOT EXISTS `ordini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(30) NOT NULL,
  `data_acquisizione` date NOT NULL,
  `importo` double NOT NULL,
  `xidi` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_impiegati` (`xidi`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ordini`
--

INSERT INTO `ordini` (`id`, `cliente`, `data_acquisizione`, `importo`, `xidi`) VALUES(1, 'Cliente1', '2012-02-23', 12400.8, 2);
INSERT INTO `ordini` (`id`, `cliente`, `data_acquisizione`, `importo`, `xidi`) VALUES(2, 'Cliente2', '2023-10-22', 23300.8, 2);
INSERT INTO `ordini` (`id`, `cliente`, `data_acquisizione`, `importo`, `xidi`) VALUES(3, 'Cliente3', '2012-01-20', 13300.8, 2);
INSERT INTO `ordini` (`id`, `cliente`, `data_acquisizione`, `importo`, `xidi`) VALUES(4, 'Cliente1', '2013-12-19', 34500.8, 1);
INSERT INTO `ordini` (`id`, `cliente`, `data_acquisizione`, `importo`, `xidi`) VALUES(5, 'Cliente1', '2011-11-21', 24500.8, 1);
INSERT INTO `ordini` (`id`, `cliente`, `data_acquisizione`, `importo`, `xidi`) VALUES(6, 'Cliente3', '2008-09-22', 28900.8, 2);
INSERT INTO `ordini` (`id`, `cliente`, `data_acquisizione`, `importo`, `xidi`) VALUES(7, 'Cliente2', '2002-08-21', 43200.8, 2);
INSERT INTO `ordini` (`id`, `cliente`, `data_acquisizione`, `importo`, `xidi`) VALUES(8, 'Cliente2', '2031-04-19', 28700.8, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordiniLibri`
--

DROP TABLE IF EXISTS `ordiniLibri`;
CREATE TABLE IF NOT EXISTS `ordiniLibri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_inizio` date NOT NULL,
  `data_fine` date DEFAULT NULL,
  `idLibri` int(11) NOT NULL,
  `idUtenti` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idLibri` (`idLibri`),
  KEY `ordiniLibri_ibfk_2` (`idUtenti`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ordiniLibri`
--

INSERT INTO `ordiniLibri` (`id`, `data_inizio`, `data_fine`, `idLibri`, `idUtenti`) VALUES(1, '2012-10-19', '2031-03-23', 4, 3);
INSERT INTO `ordiniLibri` (`id`, `data_inizio`, `data_fine`, `idLibri`, `idUtenti`) VALUES(3, '2022-08-20', '2005-06-21', 4, 4);
INSERT INTO `ordiniLibri` (`id`, `data_inizio`, `data_fine`, `idLibri`, `idUtenti`) VALUES(11, '2023-10-22', NULL, 5, 2);
INSERT INTO `ordiniLibri` (`id`, `data_inizio`, `data_fine`, `idLibri`, `idUtenti`) VALUES(12, '2031-12-18', '2030-07-21', 5, 2);
INSERT INTO `ordiniLibri` (`id`, `data_inizio`, `data_fine`, `idLibri`, `idUtenti`) VALUES(13, '2024-09-19', '2014-01-24', 7, 3);
INSERT INTO `ordiniLibri` (`id`, `data_inizio`, `data_fine`, `idLibri`, `idUtenti`) VALUES(14, '2011-02-19', NULL, 6, 1);
INSERT INTO `ordiniLibri` (`id`, `data_inizio`, `data_fine`, `idLibri`, `idUtenti`) VALUES(15, '2015-02-19', '2021-10-21', 4, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordiniRicambi`
--

DROP TABLE IF EXISTS `ordiniRicambi`;
CREATE TABLE IF NOT EXISTS `ordiniRicambi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idClienti` varchar(4) NOT NULL,
  `idProdotti` varchar(4) NOT NULL,
  `data` date NOT NULL,
  `quantita` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_RicambiClienti` (`idClienti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `prodottiRicambi`
--

DROP TABLE IF EXISTS `prodottiRicambi`;
CREATE TABLE IF NOT EXISTS `prodottiRicambi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codice` varchar(4) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `prezzo` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `propretari`
--

DROP TABLE IF EXISTS `propretari`;
CREATE TABLE IF NOT EXISTS `propretari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codice` varchar(4) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cognome` varchar(25) NOT NULL,
  `idIm` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `propretari`
--

INSERT INTO `propretari` (`id`, `codice`, `nome`, `cognome`, `idIm`) VALUES(1, '2334', 'Andrea', 'Rossi', '2435');
INSERT INTO `propretari` (`id`, `codice`, `nome`, `cognome`, `idIm`) VALUES(2, '7764', 'Giacomo', 'Neri', '8841');
INSERT INTO `propretari` (`id`, `codice`, `nome`, `cognome`, `idIm`) VALUES(3, '0443', 'Lana', 'Verdi', '0203');
INSERT INTO `propretari` (`id`, `codice`, `nome`, `cognome`, `idIm`) VALUES(4, '5462', 'Andrea', 'Neri', '9035');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

DROP TABLE IF EXISTS `utenti`;
CREATE TABLE IF NOT EXISTS `utenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `nome`) VALUES(1, 'Andrea');
INSERT INTO `utenti` (`id`, `nome`) VALUES(2, 'Kevin');
INSERT INTO `utenti` (`id`, `nome`) VALUES(3, 'Trevor');
INSERT INTO `utenti` (`id`, `nome`) VALUES(4, 'Jane');

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `ordini`
--
ALTER TABLE `ordini`
  ADD CONSTRAINT `FK_impiegati` FOREIGN KEY (`xidi`) REFERENCES `impiegati` (`id`),
  ADD CONSTRAINT `impiegati` FOREIGN KEY (`xidi`) REFERENCES `impiegati` (`id`);

--
-- Limiti per la tabella `ordiniLibri`
--
ALTER TABLE `ordiniLibri`
  ADD CONSTRAINT `ordiniLibri_ibfk_1` FOREIGN KEY (`idLibri`) REFERENCES `libri` (`id`),
  ADD CONSTRAINT `ordiniLibri_ibfk_2` FOREIGN KEY (`idUtenti`) REFERENCES `utenti` (`id`);

--
-- Limiti per la tabella `ordiniRicambi`
--
ALTER TABLE `ordiniRicambi`
  ADD CONSTRAINT `FK_RicambiClienti` FOREIGN KEY (`idClienti`) REFERENCES `clientiRicambi` (`codiceCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
