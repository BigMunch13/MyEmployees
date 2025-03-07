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

    DATA: entitlement  TYPE zbe_v_entitlemen,
          entitlements TYPE TABLE OF zbe_v_entitlemen.

    DATA: vrequest  TYPE zbe_v_request,
          vrequests TYPE TABLE OF zbe_v_request.

    DATA Klaus_uuid TYPE sysuuid_x16.
    DATA Markus_uuid TYPE sysuuid_x16.



    " Delete Employees"
    DELETE FROM zbe_employees.
    out->write( |Deleted Employees: { sy-dbcnt }| ).

    DELETE FROM zbe_v_entitlemen.
    out->write( |Deleted Entitlements: { sy-dbcnt }| ).

    DELETE FROM zbe_v_request.
    out->write( |Deleted Leave Resquests: { sy-dbcnt }| ).

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id  = '00001'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Klaus'.
    employee-last_name        = 'Neuser'.
    employee-begin_date       = '20240901'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    Klaus_uuid                = employee-employee_id.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id  = '00002'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Markus'.
    employee-last_name        = 'Müller'.
    employee-begin_date       = '20241001'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    Markus_uuid               = employee-employee_id.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id  = '00003'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Lisel'.
    employee-last_name        = 'Wolf'.
    employee-begin_date       = '20250901'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.
    vrequest-request_id        = cl_system_uuid=>create_uuid_x16_static( ).
    vrequest-applicant_id      = employee-employee_uuid.
    vrequest-approver_id       = Markus_uuid.
    vrequest-start_date        = '20241220'.
    vrequest-end_date          = '20241228'.
    vrequest-vacation_days     = 8.
    vrequest-applicant_comment = 'Winter Holiday'.
    vrequest-application_state = 'R'.
    APPEND vrequest TO vrequests.

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
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.
    vrequest-request_id        = cl_system_uuid=>create_uuid_x16_static( ).
    vrequest-applicant_id      = employee-employee_uuid.
    vrequest-approver_id       = Markus_uuid.
    vrequest-start_date        = '20250810'.
    vrequest-end_date          = '20250813'.
    vrequest-vacation_days     = 3.
    vrequest-applicant_comment = 'Marriage of my Brother'.
    vrequest-application_state = 'R'.
    APPEND vrequest TO vrequests.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00005'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Anna'.
    employee-last_name        = 'Schneider'.
    employee-begin_date       = '20251101'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

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
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00007'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Maya'.
    employee-last_name        = 'Fischer'.
    employee-begin_date       = '20250810'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00008'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Lucas'.
    employee-last_name        = 'Koch'.
    employee-begin_date       = '20250525'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00009'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Sophie'.
    employee-last_name        = 'Maier'.
    employee-begin_date       = '20250712'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

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
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00011'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Emma'.
    employee-last_name        = 'Schmidt'.
    employee-begin_date       = '20251211'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00012'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Leon'.
    employee-last_name        = 'Klein'.
    employee-begin_date       = '20250618'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

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
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00014'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Nico'.
    employee-last_name        = 'Richter'.
    employee-begin_date       = '20250317'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

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
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 30.
    APPEND entitlement TO entitlements.

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
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 15.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00017'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Nina'.
    employee-last_name        = 'Zimmermann'.
    employee-begin_date       = '20250106'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 15.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00018'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Tom'.
    employee-last_name        = 'Hoffmann'.
    employee-begin_date       = '20250323'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 15.
    APPEND entitlement TO entitlements.

    " Create employees"
    employee-employee_uuid    = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_id      = '00019'.
    employee-client           = sy-mandt.
    employee-first_name       = 'Amelie'.
    employee-last_name        = 'Neumann'.
    employee-begin_date       = '20251030'.
    employee-created_by       = 'AppenmaierD'.
    employee-last_changed_by  = 'AppenmaierD'.
    GET TIME STAMP FIELD  employee-created_at.
    GET TIME STAMP FIELD  employee-last_changed_at.
    APPEND employee TO employees.
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 15.
    APPEND entitlement TO entitlements.

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
    entitlement-entitlement_id   = cl_system_uuid=>create_uuid_x16_static( ).
    entitlement-employee_uuid    = employee-employee_id.
    entitlement-entitlement_year = 2025.
    entitlement-vacation_days    = 1.
    APPEND entitlement TO entitlements.
    vrequest-request_id        = cl_system_uuid=>create_uuid_x16_static( ).
    vrequest-applicant_id      = employee-employee_uuid.
    vrequest-approver_id       = Markus_uuid.
    vrequest-start_date        = '20250715'.
    vrequest-end_date          = '20250730'.
    vrequest-vacation_days     = 15.
    vrequest-applicant_comment = 'Summer Holiday'.
    vrequest-application_state = 'R'.
    APPEND vrequest TO vrequests.


    "Insert Employees"
    INSERT zbe_employees FROM TABLE @employees.
    out->write( |Inserted Employees: { sy-dbcnt }| ).

    INSERT zbe_v_entitlemen FROM TABLE @entitlements.
    out->write( |Inserted Entitlements: { sy-dbcnt }| ).

    INSERT zbe_v_request FROM TABLE @vrequests.
    out->write( |Inserted Leave Requests: { sy-dbcnt }| ).

  ENDMETHOD.
ENDCLASS.
