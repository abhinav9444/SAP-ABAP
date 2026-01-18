*&---------------------------------------------------------------------*
*& Report ZABAP28_PRG002
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
REPORT zabap28_prg002.

PARAMETERS: n1 TYPE i,
            n2 TYPE i.
DATA result TYPE i VALUE 0.
result = n1 + n2.
WRITE result.