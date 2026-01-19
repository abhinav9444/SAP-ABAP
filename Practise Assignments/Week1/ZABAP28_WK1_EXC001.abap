*&---------------------------------------------------------------------*
*& Report ZABAP28_WK1_EXC001
*&---------------------------------------------------------------------*
*& Author  : Abhinav Singh
*&---------------------------------------------------------------------*
*& Short Description: Display flight details between user given date range.
*&---------------------------------------------------------------------*
REPORT zabap28_wk1_exc001.

PARAMETERS:
  date1 TYPE sflight-fldate,
  date2 TYPE sflight-fldate.

TYPES: BEGIN OF ty_flight,
         carrid   TYPE sflight-carrid,
         connid   TYPE sflight-connid,
         fldate   TYPE sflight-fldate,
         seatsmax TYPE sflight-seatsmax,
         seatsocc TYPE sflight-seatsocc,
         avl_seat TYPE i,
       END OF ty_flight.

DATA:
  gs_flight TYPE ty_flight,
  gt_flight TYPE STANDARD TABLE OF ty_flight.

START-OF-SELECTION.

  IF date1 IS INITIAL OR date2 IS INITIAL.
    WRITE: / 'Please enter both DATE1 and DATE2'.
    EXIT.
  ENDIF.

  SELECT carrid
         connid
         fldate
         seatsmax
         seatsocc
    FROM sflight
    INTO CORRESPONDING FIELDS OF TABLE gt_flight
    WHERE fldate BETWEEN date1 AND date2.

  IF gt_flight IS INITIAL.
    WRITE: / 'No flight data found for given date range'.
    EXIT.
  ENDIF.

  write /.
  WRITE: / sy-vline,
           (6)  'CARRID',
           sy-vline,
           (6)  'CONNID',
           sy-vline,
           (10) 'FLDATE',
           sy-vline,
           (10) 'SEATSMAX',
           sy-vline,
           (10) 'SEATSOCC',
           sy-vline,
           (15) 'AVAILABLE SEATS',
           sy-vline.
  write /.

  LOOP AT gt_flight INTO gs_flight.

    gs_flight-avl_seat = gs_flight-seatsmax - gs_flight-seatsocc.

    WRITE: / sy-vline,
             (6)  gs_flight-carrid,
             sy-vline,
             (6)  gs_flight-connid,
             sy-vline,
             (10) gs_flight-fldate,
             sy-vline,
             (10) gs_flight-seatsmax,
             sy-vline,
             (10) gs_flight-seatsocc,
             sy-vline,
             (15) gs_flight-avl_seat,
             sy-vline.
  ENDLOOP.

  write /.