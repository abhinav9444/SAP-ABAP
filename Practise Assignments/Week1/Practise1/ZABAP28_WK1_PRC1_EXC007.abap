*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC1_EXC007
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Assign Values to Nested Structure.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc1_exc007.

TYPES: BEGIN OF ty_address,
         city  TYPE string,
         state TYPE string,
       END OF ty_address.

TYPES: BEGIN OF ty_emp_detail,
         emp_id  TYPE i,
         name    TYPE string,
         address TYPE ty_address,
       END OF ty_emp_detail.

DATA(gs_emp_detail) = VALUE ty_emp_detail(
 emp_id = 104
 name = 'Kiran'
 address = VALUE ty_address(
 city = 'Hyderabad'
 state = 'Telangana'
 )
).