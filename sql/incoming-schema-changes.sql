USE ifdb;

-- use this script for pending changes to the production DB schema

alter table reviewvotes
    add column `reviewvoteid` bigint(20) unsigned NOT NULL AUTO_INCREMENT FIRST,
    add column `createdate` datetime NOT NULL DEFAULT current_timestamp(),
    add PRIMARY KEY (`reviewvoteid`)
;



UPDATE filetypes
SET `desc` = 'a <a href="https://www.ifwiki.org/Hugo_interpreters">Hugo interpreter</a>'
WHERE fmtname = 'Hugo';

UPDATE filetypes
SET `desc` = 'a <a href="https://www.ifwiki.org/TADS_interpreters">TADS interpreter</a>'
WHERE fmtname = 'TADS 2';

UPDATE filetypes
SET `desc` = 'a <a href="https://www.ifwiki.org/Z-code_interpreters">Z-Code interpreter</a>' WHERE fmtname = 'Z-Code';

UPDATE filetypes
SET `desc` = 'a <a href="https://www.ifwiki.org/TADS_interpreters">TADS interpreter</a>'
WHERE fmtname = 'TADS 3';

UPDATE filetypes
SET `desc` = 'an <a href="https://www.ifwiki.org/Alan_interpreters">Alan interpreter</a>' WHERE fmtname = 'Alan 2';

UPDATE filetypes
SET `desc` = 'a <a href="https://www.ifwiki.org/Z-code_interpreters">Z-Code interpreter</a>' WHERE fmtname = 'Z-Code/Blorb';

UPDATE filetypes
SET `desc` = 'The file is compressed with ZIP.'
WHERE fmtname = 'ZIP';

UPDATE filetypes
SET `desc` = 'The file is compressed with LHA (also known as LHArc). Free unpacking tools are available for most platforms.'
WHERE fmtname = 'LHA';

UPDATE filetypes
SET `desc` = 'The file is compressed with StuffIt. Free StuffIt Expanders are available for most systems at <a href="http://www.stuffit.com">www.stuffit.com</a>.' WHERE fmtname = 'StuffIt';

UPDATE filetypes
SET `desc` = 'The file is compressed with the Unix-style .tar.Z <a href="http://en.wikipedia.org/wiki/Tar_(file_format)">"tarball" format</a>. Free unpacking tools are available for most platforms.'
WHERE fmtname = 'Tarball (.tar.Z)';

UPDATE filetypes
SET `desc` = 'The file is compressed with the Unix-style .tar.gz <a href="http://en.wikipedia.org/wiki/Tar_(file_format)">"tarball" format</a>. Free unpacking tools are available for most platforms.'
WHERE fmtname = 'Tarball (.tar.gz)';

UPDATE filetypes
SET `desc` = 'an <a href="https://www.ifwiki.org/Alan_interpreters">Alan interpreter</a>' 
WHERE fmtname = 'Alan 3';

UPDATE filetypes
SET `desc` = 'a <a href="https://www.ifwiki.org/Glulx_interpreters">Glulx interpreter</a>' WHERE fmtname = 'Glulx';

UPDATE filetypes
SET `desc` = 'an <a href="https://www.ifwiki.org/AGT_Interpreters">AGT interpreter</a>'
WHERE fmtname = 'AGT';

UPDATE filetypes
SET `desc` = 'an <a href="https://www.ifwiki.org/ADRIFT_interpreters">ADRIFT version 4 interpreter</a>' WHERE fmtname = 'ADRIFT 4';

UPDATE filetypes
SET `desc` = 'an <a href="https://www.ifwiki.org/AdvSys_Interpreters">AdvSys interpreter</a>' WHERE fmtname = 'AdvSys';

UPDATE filetypes
SET `desc` = 'a <a href="https://www.ifwiki.org/Glulx_interpreters">Glulx interpreter</a>' WHERE fmtname = 'Glulx/Blorb';

UPDATE filetypes
SET `desc` = 'The file is compressed with StuffIt, encoded in BinHex format. Free StuffIt Expanders are available for most systems at <a href="http://www.stuffit.com">www.stuffit.com</a>.'
WHERE fmtname = 'StuffIt/BinHex';
