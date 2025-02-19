@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Base view for employee'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_BE_Employee
  provider contract transactional_query
  as projection on ZR_BE_EMPLOYEE
{
  key EmployeeUuid,
      EmployeeId,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      FirstName,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      LastName,
      BeginDate,
      
      /* Administrative Data */
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
      
      /* Association */
//      _VacationEntitlement : redirected to composition child ZC_BE_ENTITLEMENT
      
}
