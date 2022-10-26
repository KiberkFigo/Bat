@echo off
c:
cd c:\Farmis2\exporty_aries
SET ISC_USER=FARMIS_CTENI
SET ISC_PASSWORD=Q7nFeN#k
SET ADRESAR=c:\Farmis2\exporty_aries
SET DB=aries-iva/33050:C:\database\farmis2.fdb

FSQL %DB% -I export_aries_sklady.sql

winscp.com /script=ftp.scp
rem ftp -s:ftp_export.txt replikant611.thinline.cz

cd\
cd Farmis2
cd exporty_aries

move *.csv c:\Farmis2\exporty_aries\odeslano



