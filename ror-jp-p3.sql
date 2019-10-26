-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           10.2.3-MariaDB-log - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para ror-jp-p3_development
CREATE DATABASE IF NOT EXISTS `ror-jp-p3_development` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ror-jp-p3_development`;

-- Copiando estrutura para tabela ror-jp-p3_development.addresses
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `street` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_customer_id` (`customer_id`),
  CONSTRAINT `fk_rails_d5f9efddd3` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ror-jp-p3_development.addresses: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` (`id`, `street`, `zip`, `customer_id`, `created_at`, `updated_at`) VALUES
	(1, 'Rua dos Andradas, 58', '03118-001', 1, '2019-10-25 20:18:20', '2019-10-25 20:18:20'),
	(2, 'Rua Alvorada, 157', '04672-021', 2, '2019-10-25 20:19:04', '2019-10-25 20:19:04');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;

-- Copiando estrutura para tabela ror-jp-p3_development.ar_internal_metadata
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ror-jp-p3_development.ar_internal_metadata: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'development', '2019-10-25 20:14:39', '2019-10-25 20:14:39');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;

-- Copiando estrutura para tabela ror-jp-p3_development.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ror-jp-p3_development.customers: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
	(1, 'Adalberto', 'adalberto@hotmail.com', '2019-10-25 20:18:20', '2019-10-25 20:18:20'),
	(2, 'Marina', 'marina@gmail.com', '2019-10-25 20:19:04', '2019-10-25 20:19:04');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Copiando estrutura para tabela ror-jp-p3_development.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ror-jp-p3_development.products: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `description`, `quantity`, `created_at`, `updated_at`) VALUES
	(1, 'Liquidificador', 2, '2019-10-25 22:58:01', '2019-10-25 22:58:01'),
	(2, 'Enceradeira', 1, '2019-10-25 22:58:19', '2019-10-25 22:58:19'),
	(3, 'TV de led', 6, '2019-10-26 23:01:21', '2019-10-26 23:01:21'),
	(4, 'Forno de micro-ondas', 11, '2019-10-26 23:01:57', '2019-10-26 23:01:57');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Copiando estrutura para tabela ror-jp-p3_development.schema_migrations
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ror-jp-p3_development.schema_migrations: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20191025112054'),
	('20191025183826'),
	('20191025224325'),
	('20191025235958'),
	('20191026131159');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela ror-jp-p3_development.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ror-jp-p3_development.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `created_at`, `updated_at`, `role`) VALUES
	(1, 'admin@orion3.com.br', '$2a$11$57oNdfHa562ADHhpH0IaKeM6nEpLzCMjyCqWu50X4N56RP.T8DL7i', NULL, NULL, NULL, '2019-10-26 00:51:55', '2019-10-26 14:31:42', 1),
	(2, 'jackson@gmail.com', '$2a$11$j72h4YJtWJcgaaI9RXZDz.Jo1Nbu5i6MRU/PrMpgaqnPTwdGe9oYO', NULL, NULL, NULL, '2019-10-26 14:17:02', '2019-10-26 14:17:02', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
