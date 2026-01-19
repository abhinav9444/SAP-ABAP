*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_PRC2__EXC001
*&---------------------------------------------------------------------*
*& Author: Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Read All Flight Connections (SPFLI).
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_prc2__exc001.

DATA gt_spfli TYPE STANDARD TABLE OF spfli. "Creates an internal table gt_spfli in which Each row has the same structure as database table SPFLI
SELECT *
 FROM spfli           "Reads from the SAP standard flight connection table -- SPFLI"
 INTO TABLE gt_spfli. "Stores all selected rows into the internal table gt_spfli"

LOOP AT gt_spfli INTO DATA(gs_spfli). "Iterates over each row of internal table gt_spfli.
  WRITE: / gs_spfli-carrid,           "Creates a work area gs_spfli automatically (inline declaration)."
           gs_spfli-connid,           "In each iteration, one row from gt_spfli is copied into gs_spfli."
           gs_spfli-cityfrom,         "gs_spfli has the same structure as table SPFLI."
           gs_spfli-cityto.
ENDLOOP.