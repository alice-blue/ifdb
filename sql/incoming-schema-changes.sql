USE ifdb;

-- use this script for pending changes to the production DB schema



DROP TABLE IF EXISTS `suspicious_domains`;
CREATE TABLE `suspicious_domains` ( 
  `record_id` INT AUTO_INCREMENT,
  `domain` VARCHAR(255) NOT NULL,
  `mod_date` DATETIME DEFAULT now(),
  `suspicion_level` tinyint(1) UNSIGNED NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  PRIMARY KEY (record_id)
);

insert into suspicious_domains (domain, mod_date, suspicion_level, modified_by)
values ('gmail.com', now(), '2', '1234567ABC');  