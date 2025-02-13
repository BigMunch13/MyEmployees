@AbapCatalog.sqlViewName: 'ZBE_REQUEST'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for leave requests'
define view ZR_BE_REQUESTS as select from zbe_v_request
  association        to parent ZR_BE_EMPLOYEE  as _Applicant on  $projection.ApplicantId = _Applicant.EmployeeUuid
  association [1..1] to ZR_BE_EMPLOYEE         as _Approver  on  $projection.ApproverId = _Approver.EmployeeUuid
{
   /* Fields */
      @Semantics.uuid: true
  key request_id                as RequestId,
      @Semantics.uuid: true
//      @ObjectModel.text.element: [ 'ApplicantFullName' ]
      applicant_id              as ApplicantId,
      @Semantics.uuid: true
//      @ObjectModel.text.element: [ 'ApproverFullName' ]
      approver_id               as ApproverId,
      @Semantics.dateTime: true
      start_date                as StartDate,
      @Semantics.dateTime: true
      end_date                  as EndDate,
      vacation_days             as VacationDays,
      applicant_comment         as ApplicationComment,
      application_state         as State,

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
