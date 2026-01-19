*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC2__EXC003
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Read Single Flight Connection.
*&---------------------------------------------------------------------*
REPORT ZABAP28_WK1_PRC2__EXC003.

DATA gs_spfli TYPE spfli.
SELECT SINGLE *
 FROM spfli
 INTO gs_spfli
 WHERE carrid = 'LH'
 AND connid = '0400'.

* This ABAP code reads one specific record from the SAP standard table SPFLI (Flight Schedule) and stores it into a work area.
*Creates a structure (gs_spfli) with the same fields as database table SPFLI
*It will hold one row of data from the table

*Fetches a single database record from table SPFLI using SELECT SINGLE with CARRID = 'LH' i.e, Lufthansa
*and CONNID = '0400' as selection criteria and stores all its detail as a result in a work area, If the record exists.
*otherwise, the work area remains empty.