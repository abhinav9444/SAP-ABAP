*&---------------------------------------------------------------------*
*& Report ZABAP28_PRG003
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Calculate circumference of circle.
*&---------------------------------------------------------------------*
REPORT zabap28_prg003.

PARAMETERS r TYPE i.
DATA circumference TYPE p DECIMALS 2.
CONSTANTS pi TYPE p VALUE '3.14'.
circumference = 2 * pi * r.
WRITE: 'Circumference is :', circumference.