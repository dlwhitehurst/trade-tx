CREATE DATABASE IF NOT EXISTS `trade-tx`

USE `trade-tx`;

UNLOCK TABLES;

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
                            `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
                            `date_time` varchar(40) NOT NULL,
                            `description`  varchar(80) NOT NULL,
                            `amount`  varchar(20) NOT NULL,
                            `commission`  varchar(20) NOT NULL,
                            `regulatory_fee`  varchar(20) NOT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `transactions` WRITE;
INSERT INTO `transactions` (`date_time`, `description`, `amount`, `commission`, `regulatory_fee`) VALUES ('11/22/1963 10:37:46', 'Bought 100 X @ 10.25', '10250.00', '0.65', '0.00');
UNLOCK TABLES;
