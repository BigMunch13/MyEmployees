@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumed Vacation Days'
define view entity ZI_BE_ConsumedVacationDays
  as select from zbe_v_request
{
      /* Fields */
  key applicant_id       as EmployeeUuid,
      sum(vacation_days) as ConsumedVacationDays
}
where
      application_state    = 'A'
  and end_date < $session.user_date
group by
  applicant_id;
