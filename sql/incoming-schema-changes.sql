USE ifdb;

-- use this script for pending changes to the production DB schema

alter table reviewvotes
    add column `reviewvoteid` bigint(20) unsigned NOT NULL AUTO_INCREMENT FIRST,
    add column `createdate` datetime NOT NULL DEFAULT current_timestamp(),
    add PRIMARY KEY (`reviewvoteid`)
;


UPDATE filetypes
SET `desc` = 'a <a href="https://www.ifwiki.org/Hugo_interpreters">Hugo interpreter</a>' WHERE fmtname = 'Hugo';
SET `desc` = 'a <a href="https://www.ifwiki.org/TADS_interpreters">TADS interpreter</a>' WHERE fmtname = 'TADS 2';
SET `desc` = 'a <a href="https://www.ifwiki.org/Z-code_interpreters">Z-Code interpreter</a>' WHERE fmtname = 'Z-Code';
SET `desc` = 'a <a href="https://www.ifwiki.org/TADS_interpreters">TADS interpreter</a>' WHERE fmtname = 'TADS 3';
SET `desc` = 'an <a href="https://www.ifwiki.org/Alan_interpreters">Alan interpreter</a>' WHERE fmtname = 'Alan 2';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
SET `desc` = '' WHERE fmtname = '';
