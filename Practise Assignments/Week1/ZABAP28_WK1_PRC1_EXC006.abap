*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC1_EXC006
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Nested Structure.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc1_exc006.

TYPES: BEGIN OF ty_address,
         city  TYPE string,
         state TYPE string,
       END OF ty_address.
TYPES: BEGIN OF ty_emp_detail,
         emp_id  TYPE i,
         name    TYPE string,
         address TYPE ty_address,
       END OF ty_emp_detail.