*&---------------------------------------------------------------------*
*& Report ZABAP28_PRG004
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Program to manipulate and concatenate strings using offset technique.
*&---------------------------------------------------------------------*
REPORT zabap28_prg004.

DATA: name1(15)      TYPE c,
      name2(15)      TYPE c,
      new_name1(15)  TYPE c,
      new_name2(15)  TYPE c,
      final_name(25) TYPE c.

MOVE: 'Abhinav Singh' TO name1,
      'Virat Kohli'   TO name2.

MOVE name1+0(7) TO new_name1. "Offset 0, Length 7 -- means start from 0th position and take 7 characters"
MOVE name2+5(6) TO new_name2. "Offset 5, Length 6 -- means start from 5th position and take 6 characters"

*Replacement of CONCATENATE using offset technique and MOVE:

MOVE:
  new_name1 TO final_name,
  space      TO final_name+7(1),
  new_name2 TO final_name+8.

WRITE final_name.