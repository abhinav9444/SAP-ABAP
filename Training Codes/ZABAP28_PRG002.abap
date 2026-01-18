*&---------------------------------------------------------------------*
*& Report ZABAP28_PRG002
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Add two numbers by taking input.
*&---------------------------------------------------------------------*
REPORT zabap28_prg002.

DATA: result TYPE i.
PARAMETERS: n1 TYPE i, "Parameters is input statement"
            n2 TYPE i.
result = n1 + n2.
WRITE: / 'Result:', result.