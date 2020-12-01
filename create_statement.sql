CREATE TABLE `city` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `City_name` varchar(255) NOT NULL,
  `country_id` mediumint(9) NOT NULL,
  `district_id` mediumint(9) DEFAULT NULL,
  `region_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_name` (`City_name`),
  CONSTRAINT `FK_city_id` FOREIGN KEY (`id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `country` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_name` (`country_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `district` (
  `id` mediumint(9) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `region_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `district_name` (`district_name`),
  CONSTRAINT `Fk_disctict_id` FOREIGN KEY (`id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `region` (
  `id` mediumint(9) NOT NULL,
  `region_name` varchar(255) NOT NULL,
  `country_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_name` (`region_name`),
  CONSTRAINT `fk_region_id` FOREIGN KEY (`id`) REFERENCES `country` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
