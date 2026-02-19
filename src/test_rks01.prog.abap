*&---------------------------------------------------------------------*
*& Report TEST_RKS01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT TEST_RKS01.

WRITE 'HELLO'.


DATA: lt_result TYPE TABLE OF mara,
      ls_result TYPE mara.

SELECT matnr maktx mtart
  INTO TABLE @lt_result
  FROM mara
  WHERE mtart = 'FERT'
  ORDER BY matnr.

LOOP AT lt_result INTO ls_result.
  WRITE: / ls_result-matnr, ls_result-maktx.
ENDLOOP.


DATA: lt_result TYPE TABLE OF mara,
      ls_result TYPE mara.

SELECT matnr maktx mtart
  INTO TABLE @lt_result
  FROM mara
  WHERE mtart = 'FERT'
  ORDER BY matnr.

LOOP AT lt_result INTO ls_result.
  WRITE: / ls_result-matnr, ls_result-maktx.
ENDLOOP.
