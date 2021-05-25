-- Adminer 4.8.0 MySQL 5.5.5-10.5.10-MariaDB-1:10.5.10+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `moods`;
CREATE TABLE `moods` (
                         `score` tinyint(4) NOT NULL,
                         `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
                         `PK` int(11) NOT NULL,
                         `FK` int(11) NOT NULL,
                         KEY `PK` (`PK`),
                         KEY `FK` (`FK`),
                         CONSTRAINT `moods_ibfk_1` FOREIGN KEY (`PK`) REFERENCES `User` (`PK`),
                         CONSTRAINT `moods_ibfk_2` FOREIGN KEY (`FK`) REFERENCES `User` (`PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
                        `Name` char(1) NOT NULL,
                        `PK` int(11) NOT NULL AUTO_INCREMENT,
                        PRIMARY KEY (`PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2021-05-25 17:30:28
