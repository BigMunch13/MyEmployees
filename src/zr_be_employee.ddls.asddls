@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for employee'
define root view entity ZR_BE_EMPLOYEE
  as select from zbe_employees
  composition [0..*] of ZR_BE_ENTITLEMENT as _VacationEntitlement
  
{
      @Semantics.uuid: true
  key employee_uuid   as EmployeeUuid,
      employee_id     as EmployeeId,
      first_name      as FirstName,
      last_name       as LastName,
      @Semantics.dateTime: true
      begin_date      as BeginDate,

      /* Administrative Data */
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      
      /* Association */
      _VacationEntitlement
}
