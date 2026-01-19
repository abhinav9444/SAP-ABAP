*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC2__EXC004
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Read Flights (SFLIGHT) - reads up to ten flight records from SFLIGHT into an internal table.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc2__exc004.

DATA gt_sflight TYPE STANDARD TABLE OF sflight. " Declares a standard internal table 'gt_sflight' to store multiple records with the SFLIGHT table structure.
SELECT *
 FROM sflight
 INTO TABLE gt_sflight
 UP TO 10 ROWS.

* Notes to Revise :
*This code declares a standard internal table 'gt_sflight' with the structure of SFLIGHT.
*It then uses Open SQL to fetch up to 10 records from the SFLIGHT database table.
*The retrieved flight data is stored in the internal table.