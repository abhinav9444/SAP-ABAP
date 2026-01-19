*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC1_EXC0010
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Clear Structure -- Reset all values in a structure.
*&---------------------------------------------------------------------*
REPORT ZABAP28_WK1_PRC1_EXC0010.

TYPES: BEGIN OF ty_employee,
         emp_id   TYPE i,
         emp_name TYPE string,
         salary   TYPE p DECIMALS 2,
       END OF ty_employee.
DATA: gs_employee TYPE ty_employee.

gs_employee-emp_id = 101.
gs_employee-emp_name = 'Ravi'.
gs_employee-salary = '45000.50'.

CLEAR gs_employee. "This resets all values in the structure variable gs_employee."

WRITE: / 'Employee ID   :', gs_employee-emp_id,
       / 'Employee Name :', gs_employee-emp_name,
       / 'Salary        :', gs_employee-salary.