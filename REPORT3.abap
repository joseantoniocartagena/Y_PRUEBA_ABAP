*&---------------------------------------------------------------------*
*& Report  Y_PRUEBA_ABAP_3
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT Y_PRUEBA_ABAP_3.

TYPES TY_T_PERSONA TYPE STANDARD TABLE OF YUSUARIOPRUEBA.


DATA: L_TI_PERSONA TYPE TY_T_PERSONA.
  

SELECT * FROM YUSUARIOPRUEBA INTO TABLE L_TI_PERSONA.

LOOP AT L_TI_PERSONA INTO DATA(L_ES_PERSONA).
  WRITE: / L_ES_PERSONA-NOMBRE, L_ES_PERSONA-CIUDAD.
ENDLOOP.


PERFORM SAYHOO.
PERFORM LLENAR_CLIENTE.

FORM LLENAR_CLIENTE.
  WRITE: / 'machete'.
ENDFORM.

INCLUDE Y_PRUEBA_ABAP_3_SAYHOOF01.