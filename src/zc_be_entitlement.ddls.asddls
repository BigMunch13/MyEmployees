@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for entitlement'
@Metadata.allowExtensions: true
define view entity ZC_BE_ENTITLEMENT
  as projection on ZR_BE_ENTITLEMENT
{
  /* Fields */
  key EntitlementId,
  EmployeeUuid,
  EntitlementYear,
  VacationDays,
  
  /* Admin Data */
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  LastChangedAt,
  
  /* Associations */
  _Employee : redirected to parent ZC_BE_Employee
}
