*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC2__EXC002
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Select Specific Fields from SPFLI.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc2__exc002.

* Code Given in WK1, PRC-2, EXC-2 :
*DATA gt_conn TYPE STANDARD TABLE OF spfli.
* SELECT carrid connid cityfrom cityto
*  FROM spfli
*  INTO TABLE gt_conn.
*Gives Error !!
* The data type of the component "CONNID" of "GT_CONN" is not compatible with the data type of "CITYFROM" (see long text).
* Reason :
* The error occurs because the internal table GT_CONN has the full structure of SPFLI,
* but the SELECT statement fetches only a few fields. ABAP assigns selected fields by position, not by name,
* so CITYFROM gets assigned to CONNID, causing a data type mismatch.

*Correct Compatible code :

DATA gt_conn TYPE STANDARD TABLE OF spfli.

SELECT carrid connid cityfrom cityto
  FROM spfli
  INTO CORRESPONDING FIELDS OF TABLE gt_conn.