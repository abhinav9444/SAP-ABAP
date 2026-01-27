*&---------------------------------------------------------------------*
*& Report ZABAP28_PRG005
*&---------------------------------------------------------------------*
*& Short Description : Structure declaration, data assignment to Structure
*& variable and output using normal and inline initialization
*&---------------------------------------------------------------------*
REPORT zabap28_prg005.


TYPES: BEGIN OF ty_employee,  "Definition of employee structure"
         emp_id   TYPE i,
         emp_name TYPE string,
         salary   TYPE p DECIMALS 2,
       END OF ty_employee.

DATA: gs_employee TYPE ty_employee. "Declaration structure variable"

*Assigning values to structure fields (normal method)
gs_employee-emp_id   = 101.
gs_employee-emp_name = 'Ravi'.
gs_employee-salary   = '45000.50'.

WRITE: / 'Employee 1 Details:',   "Displaying 1st employee details"
       / gs_employee-emp_id,
        gs_employee-emp_name,
        gs_employee-salary.

WRITE /. "" Line break

*Inline structure initialization using VALUE expression
DATA(gs_emp) = VALUE ty_employee(
                 emp_id   = 102
                 emp_name = 'Anil'
                 salary   = '52000.00'
               ).

WRITE: / 'Employee 2 Details:',  "Displaying 2nd employee details"
       / gs_emp-emp_id,
        gs_emp-emp_name,
        gs_emp-salary.