*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC1_EXC009
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Structure with System Fields.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc1_exc009.

TYPES: BEGIN OF ty_log,
         uname TYPE syuname,
         date  TYPE sydatum,
         time  TYPE syuzeit,
       END OF ty_log.
DATA(gs_log) = VALUE ty_log(
 uname = sy-uname
 date = sy-datum
 time = sy-uzeit
).