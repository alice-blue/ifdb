USE ifdb;

-- use this script for pending changes to the production DB schema

DROP TABLE IF EXISTS `suspicious_domains`;
CREATE TABLE `suspicious_domains` ( 
  `suspicious_domain_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `domain` VARCHAR(255) NOT NULL,
  `suspicion_level` tinyint(1) UNSIGNED NOT NULL,
  PRIMARY KEY (suspicious_domain_id),
  UNIQUE KEY `domain` (`domain`)
);

insert into suspicious_domains (domain, suspicion_level)
values ('gmail.com', '1');
insert into suspicious_domains (domain, suspicion_level)
values ('outlook.com', '2');
insert into suspicious_domains (domain, suspicion_level)
values ('yahoo.com', '3');




DROP TABLE IF EXISTS `suspicious_domains_history`;
CREATE TABLE `suspicious_domains_history` ( 
  `record_id` INT AUTO_INCREMENT,
  `domain` VARCHAR(255) NOT NULL,
  `mod_date` DATETIME DEFAULT now(),
  `suspicion_level` VARCHAR(6) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `admin_note` varchar(255) NOT NULL,
  PRIMARY KEY (record_id)
);

insert into `suspicious_domains_history` (domain, mod_date, suspicion_level, modified_by, admin_note)
values ('gmail.com', '1997-01-01 00:38:54.840', '3', 'kaw2cas7dyiq2tmg', 'My comment.');
insert into suspicious_domains_history (domain, mod_date, suspicion_level, modified_by, admin_note)
values ('gmail.com', '2019-12-31 08:38:54.840', '1', '35hnhtx0k51rr9j', 'My latest awesome comment');  
insert into suspicious_domains_history (domain, mod_date, suspicion_level, modified_by, admin_note)
values ('outlook.com', '2020-06-20 02:38:54.840', '2', 'kaw2cas7dyiq2tmg', 'Comment goes here.'); 
insert into suspicious_domains_history (domain, mod_date, suspicion_level, modified_by, admin_note)
values ('yahoo.com', '2023-07-20 02:38:54.840', '3', '35hnhtx0k51rr9j', 'Comment goes here.');

-- insert into suspicious_domains_history (domain, mod_date, suspicion_level, modified_by, admin_note)
-- values ('facebook.com', '2006-02-20 02:38:54.840', '2', 'kaw2cas7dyiq2tmg', 'Comment goes here.');
-- insert into suspicious_domains_history (domain, mod_date, suspicion_level, modified_by, admin_note)
-- values ('fakedomain.edu', '2010-09-20 02:38:54.840', '3', '35hnhtx0k51rr9j', 'Comment goes here.'); 
