@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Available Vacation Days'
define view entity ZI_BE_AvailableVacationDays
  as select from zbe_v_entitlemen
  association [1..1] to ZI_BE_ConsumedVacationDays as _ConsumedVD on $projection.EmployeeUuid = _ConsumedVD.EmployeeUuid
  association [1..1] to ZI_BE_PlannedVacationDays  as _PlannedVD  on $projection.EmployeeUuid = _PlannedVD.EmployeeUuid
{
      /* Fields */
  key employee_uuid                                                                                                    as EmployeeUuid,
      sum(vacation_days) - coalesce(_ConsumedVD.ConsumedVacationDays, 0) - coalesce(_PlannedVD.PlannedVacationDays, 0) as AvailableVacationDays

}
//where entitlement_year = left($session.system_date, 4);
group by
  employee_uuid,
  _ConsumedVD.ConsumedVacationDays,
  _PlannedVD.PlannedVacationDays;
