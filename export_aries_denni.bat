@echo on
c:
cd c:\Farmis2\exporty_aries
SET ISC_USER=FARMIS_CTENI
SET ISC_PASSWORD=Q7nFeN#k
SET ADRESAR=c:\Farmis2\exporty_aries
SET DB=aries-iva/33050:C:\database\farmis2.fdb

rem SET OBDOBI_OD=2022-08-31
rem SET OBDOBI_DO=2022-08-31
FSQL %DB% -I export_aries_vydeje.sql
FSQL %DB% -I export_aries_prijmy.sql
FSQL %DB% -I export_aries_paragony.sql
FSQL %DB% -I export_aries_vydeje_dl.sql

winscp.com /script=ftp.scp
rem ftp -s:ftp_export.txt replikant611.thinline.cz

cd\
cd Farmis2
cd exporty_aries

move *.csv c:\Farmis2\exporty_aries\odeslano



