@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for leave requests'
define view entity ZR_BE_REQUESTS as select from zbe_v_request
  association        to parent ZR_BE_EMPLOYEE  as _Applicant on  $projection.ApplicantId = _Applicant.EmployeeUuid
  association [1..1] to ZR_BE_EMPLOYEE         as _Approver  on  $projection.ApproverId = _Approver.EmployeeUuid
  association [1..1] to ZI_BE_StateValueHelp   as _StateVH   on  $projection.State = _StateVH.State
                                                             and _StateVH.Language = $session.system_language
  
{
   /* Fields */
      @Semantics.uuid: true
  key request_id                as RequestId,
      @Semantics.uuid: true
      applicant_id              as ApplicantId,
      @Semantics.uuid: true
      approver_id               as ApproverId,
      @Semantics.dateTime: true
      start_date                as StartDate,
      @Semantics.dateTime: true
      end_date                  as EndDate,
      vacation_days             as VacationDays,
      applicant_comment         as ApplicationComment,
      application_state         as State,

      _StateVH.StateDescription as StateDescription,
      case when dats_days_between($session.user_date, start_date) >= 14 then 0
           when dats_days_between($session.user_date, start_date) >= 7 then 3
           when dats_days_between($session.user_date, start_date) >= 0 then 2
           else 1
      end                       as StartDateCriticality,
      case application_state when 'A' then 3
                             when 'R' then 2
                             when 'D' then 1
                             else 0
      end                       as StateCriticality,
      
      
      
      /* Admin Data */
      @Semantics.user.createdBy: true
      created_by                as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at                as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by           as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at           as LastChangedAt,

      /* Association */
      _Applicant,
      _Approver
}
