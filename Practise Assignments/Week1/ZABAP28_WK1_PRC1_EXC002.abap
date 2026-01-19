*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC1_EXC002
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Assign Values to a Structure.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc1_exc002.

TYPES: BEGIN OF ty_employee,
         emp_id   TYPE i,
         emp_name TYPE string,
         salary   TYPE p DECIMALS 2,
       END OF ty_employee.
DATA: gs_employee TYPE ty_employee.

gs_employee-emp_id = 101.
gs_employee-emp_name = 'Ravi'.
gs_employee-salary = '45000.50'.

WRITE: / gs_employee-emp_id,
       / gs_employee-emp_name,
       / gs_employee-salary.