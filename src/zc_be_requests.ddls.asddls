@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for leave requests'
define view entity ZC_BE_REQUESTS as projection on ZR_BE_REQUESTS
{
  /* Fields */
  key RequestId,
  ApplicantId,
//  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_CEO_EmployeeUuidVH', element: 'EmployeeId' }}]
  ApproverId,
  StartDate,
  EndDate,
  VacationDays,
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.7
  ApplicationComment,
  State,
//  ApplicantFullName,
//  ApproverFullName,
//  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_CEO_StateVH', element: 'StateDescription' }}]
//  StateDescription,
//  StartDateCriticality,
//  StateCriticality,
  
  /* Admin Data */
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  LastChangedAt,
  
  /* Associations */
  _Applicant : redirected to parent ZC_BE_Employee,
  _Approver  : redirected to ZC_BE_Employee
}
