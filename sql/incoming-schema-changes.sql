USE ifdb;

-- use this script for pending changes to the production DB schema



DROP TABLE IF EXISTS `suspicious_domains`;
CREATE TABLE `suspicious_domains` ( 
  `record_id` INT AUTO_INCREMENT,
  `domain` VARCHAR(255) NOT NULL,
  `mod_date` DATETIME DEFAULT now(),
  `suspicion_level` tinyint(1) UNSIGNED NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `admin_note` varchar(255) NOT NULL,
  PRIMARY KEY (record_id)
);

insert into `suspicious_domains` (domain, mod_date, suspicion_level, modified_by, admin_note)
values ('gmail.com', '1997-01-01 00:38:54.840', '3', 'Bob', 'I really hate gmail. It should be illegal.');
insert into suspicious_domains (domain, mod_date, suspicion_level, modified_by, admin_note)
values ('gmail.com', '2027-12-31 08:38:54.840', '1', 'Amy', 'My latest awesome comment');  
insert into suspicious_domains (domain, mod_date, suspicion_level, modified_by, admin_note)
values ('outlook.com', '2020-06-20 02:38:54.840', '2', 'Dave', 'Comment goes here.'); 