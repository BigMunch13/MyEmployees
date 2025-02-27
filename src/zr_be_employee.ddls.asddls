@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for employee'
define root view entity ZR_BE_EMPLOYEE
  as select from zbe_employees
  composition [0..*] of ZR_BE_ENTITLEMENT      as _VacationEntitlement
  composition [0..*] of ZR_BE_REQUESTS         as _LeaveRequests
  association [1..1] to ZI_BE_AvailableVacationDays as _AvailableVD on $projection.EmployeeUuid = _AvailableVD.EmployeeUuid
  association [1..1] to ZI_BE_PlannedVacationDays   as _PlannedVD   on $projection.EmployeeUuid = _PlannedVD.EmployeeUuid
  association [1..1] to ZI_BE_ConsumedVacationDays  as _ConsumedVD  on $projection.EmployeeUuid = _ConsumedVD.EmployeeUuid
  
{
      @Semantics.uuid: true
  key employee_uuid   as EmployeeUuid,
      employee_id     as EmployeeId,
      first_name      as FirstName,
      last_name       as LastName,
      @Semantics.dateTime: true
      begin_date      as BeginDate,
      
      /* Transient Data */
      _AvailableVD.AvailableVacationDays as AvailableVacationDays,
      _PlannedVD.PlannedVacationDays     as PlannedVacationDays,
      _ConsumedVD.ConsumedVacationDays   as ConsumedVacationDays,
      
      '3'                                as AvailableVDaysCriticality,
      '2'                                as PlannedVDaysCriticality,
      '1'                                as ConsumedVDaysCriticality,
      
      

      /* Administrative Data */
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      
      /* Association */
      _VacationEntitlement,
      _LeaveRequests
}
