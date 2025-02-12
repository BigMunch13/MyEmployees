@AbapCatalog.sqlViewName: 'ZBE_ENTITLEMENT'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for entitlement'
define view ZR_BE_ENTITLEMENT as select from zbe_v_entitlemen
  association to parent ZR_BE_EMPLOYEE as _Employee on $projection.EmployeeUuid = _Employee.EmployeeUuid

{
      /* Fields */
      @Semantics.uuid: true
  key entitlement_id   as EntitlementId,
      @Semantics.uuid: true
      employee_uuid    as EmployeeUuid,
      @Semantics.calendar.year: true
      entitlement_year as EntitlementYear,
      @Semantics.durationInDays: true
      vacation_days    as VacationDays,

      /* Admin Data */
      @Semantics.user.createdBy: true
      created_by       as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at       as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by  as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at  as LastChangedAt,

      /* Association */
      _Employee
}
