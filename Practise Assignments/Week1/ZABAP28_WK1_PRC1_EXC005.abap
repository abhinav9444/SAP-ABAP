*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC1_EXC005
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Loop Through Structure Table.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc1_exc005.

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

LOOP AT gt_employee INTO gs_employee.
  WRITE: / gs_employee-emp_id,
  gs_employee-emp_name,
  gs_employee-salary.
ENDLOOP.