CREATE DATABASE IF NOT EXISTS `trade-tx`;

USE `trade-tx`;

UNLOCK TABLES;

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
                            `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
                            `tx_date` varchar(20) NOT NULL,
                            `tx_id` varchar(40) NOT NULL,
                            `tx_description`  varchar(80) NOT NULL,
                            `tx_quantity` varchar(20) NOT NULL,
                            `tx_symbol` varchar(60) NOT NULL,
                            `tx_price` varchar(20) NOT NULL,
                            `tx_commission` varchar(10) NOT NULL,
                            `tx_amount`  varchar(20) NOT NULL,
                            `tx_regulatory_fee`  varchar(10) NOT NULL,
                            `tx_short_term_rdm_fee`  varchar(10) NOT NULL,
                            `tx_fund_redemption_fee`  varchar(10) NOT NULL,
                            `tx_deferred_sales_charge`  varchar(10) NOT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- //DATE,TRANSACTION ID,DESCRIPTION,QUANTITY,SYMBOL,PRICE,COMMISSION,AMOUNT,
--    // REG FEE,SHORT-TERM RDM FEE,FUND REDEMPTION FEE, DEFERRED SALES CHARGE
--    //04/04/2023,49252224461,Sold 80 ERO @ 18.08,80,ERO,18.08,0.00,1446.38,0.02,,,

LOCK TABLES `transactions` WRITE;
INSERT INTO `transactions` (`tx_date`, `tx_id`,`tx_description`, `tx_quantity`, `tx_symbol`,
                            `tx_price`, `tx_commission`, `tx_amount`, `tx_regulatory_fee`,
                            `tx_short_term_rdm_fee`, `tx_fund_redemption_fee`,
                            `tx_deferred_sales_charge`) VALUES (
        '11/22/1963',
        '49252224461',
        'Bought 100 X @ 10.25',
        '80', 'ERO', '18.08', '0.00','1446.38','0.02','0.00','0.00','0.00');
UNLOCK TABLES;
