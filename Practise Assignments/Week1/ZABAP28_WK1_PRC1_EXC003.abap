*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC1_EXC003
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Use Structure with DATA Statement
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc1_exc003.

TYPES: BEGIN OF ty_employee,
         emp_id   TYPE i,
         emp_name TYPE string,
         salary   TYPE p DECIMALS 2,
       END OF ty_employee.

DATA(gs_emp) = VALUE ty_employee(
 emp_id = 102
 emp_name = 'Anil'
 salary = '52000'
).