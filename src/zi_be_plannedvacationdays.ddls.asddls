@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Planned Vacation Days'
define view entity ZI_BE_PlannedVacationDays
  as select from zbe_v_request
{
      /* Fields */
  key applicant_id       as EmployeeUuid,
      sum(vacation_days) as PlannedVacationDays
}
where
      application_state <> 'D'
  and end_date >= $session.system_date
group by
  applicant_id;
