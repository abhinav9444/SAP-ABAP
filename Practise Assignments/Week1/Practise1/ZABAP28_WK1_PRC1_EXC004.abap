*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC1_EXC004
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Structure Inside Internal Table.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc1_exc004.

TYPES: BEGIN OF ty_employee,
         emp_id   TYPE i,
         emp_name TYPE string,
         salary   TYPE p DECIMALS 2,
       END OF ty_employee.

DATA: gt_employee TYPE STANDARD TABLE OF ty_employee,
      gs_employee TYPE ty_employee.
gs_employee-emp_id = 103.
gs_employee-emp_name = 'Sita'.
gs_employee-salary = '60000'.
APPEND gs_employee TO gt_employee.