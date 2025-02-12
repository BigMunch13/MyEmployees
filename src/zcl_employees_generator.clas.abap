CLASS zcl_employees_generator DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_employees_generator IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: employee  TYPE zbe_employees,
          employees TYPE TABLE OF zbe_employees.

    " Delete Employees"
    DELETE FROM zbe_employees.
    out->write( |Deleted Employees: { sy-dbcnt }| ).

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00001'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Jan'.
    employee-last_name        = 'Neuser'.
    employee-begin_date       = '20240901'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00002'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Sebastion'.
    employee-last_name        = 'Müller'.
    employee-begin_date       = '20241001'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00003'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Lisel'.
    employee-last_name        = 'Wolf'.
    employee-begin_date       = '20230901'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00004'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Bartholomeus'.
    employee-last_name        = 'Huber'.
    employee-begin_date       = '20220930'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

  " Create employees"
  employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00005'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Anna'.
    employee-last_name        = 'Schneider'.
    employee-begin_date       = '20231101'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00006'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Felix'.
    employee-last_name        = 'Weber'.
    employee-begin_date       = '20240115'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00007'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Maya'.
    employee-last_name        = 'Fischer'.
    employee-begin_date       = '20230810'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00008'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Lucas'.
    employee-last_name        = 'Koch'.
    employee-begin_date       = '20230525'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00009'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Sophie'.
    employee-last_name        = 'Maier'.
    employee-begin_date       = '20230712'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00010'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Jonas'.
    employee-last_name        = 'Wagner'.
    employee-begin_date       = '20240422'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00011'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Emma'.
    employee-last_name        = 'Schmidt'.
    employee-begin_date       = '20231211'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00012'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Leon'.
    employee-last_name        = 'Klein'.
    employee-begin_date       = '20230618'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00013'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Isabella'.
    employee-last_name        = 'Lang'.
    employee-begin_date       = '20240805'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00014'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Nico'.
    employee-last_name        = 'Richter'.
    employee-begin_date       = '20230317'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00015'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Lina'.
    employee-last_name        = 'Bauer'.
    employee-begin_date       = '20240909'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00016'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Kilian'.
    employee-last_name        = 'Krüger'.
    employee-begin_date       = '20241119'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00017'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Nina'.
    employee-last_name        = 'Zimmermann'.
    employee-begin_date       = '20230106'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00018'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Tom'.
    employee-last_name        = 'Hoffmann'.
    employee-begin_date       = '20230323'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00019'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Amelie'.
    employee-last_name        = 'Neumann'.
    employee-begin_date       = '20231030'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00020'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Maximilian'.
    employee-last_name        = 'Krause'.
    employee-begin_date       = '20240508'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.

    "Insert Employees"
    INSERT zbe_employees FROM TABLE @employees.
    out->write( |Inserted Employees: { sy-dbcnt }| ).
  ENDMETHOD.
ENDCLASS.
