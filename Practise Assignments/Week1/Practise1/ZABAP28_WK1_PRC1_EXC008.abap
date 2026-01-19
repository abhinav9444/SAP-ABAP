*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC1_EXC008
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: MOVE-CORRESPONDING Between Structures.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc1_exc008.

TYPES: BEGIN OF ty_employee,
         emp_id   TYPE i,
         emp_name TYPE string,
         salary   TYPE p DECIMALS 2,
       END OF ty_employee.

DATA: gs_emp1 TYPE ty_employee,
      gs_emp2 TYPE ty_employee.
gs_emp1-emp_id = 105.
gs_emp1-emp_name = 'Raj'.
MOVE-CORRESPONDING gs_emp1 TO gs_emp2.