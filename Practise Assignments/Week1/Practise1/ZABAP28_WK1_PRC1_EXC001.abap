*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC1_EXC001
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Define a Simple Structure.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc1_exc001.

TYPES: BEGIN OF ty_employee,
         emp_id   TYPE i,
         emp_name TYPE string,
         salary   TYPE p DECIMALS 2,
       END OF ty_employee.
DATA: gs_employee TYPE ty_employee.