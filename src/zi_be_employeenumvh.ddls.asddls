@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Number Value Help'
@Search.searchable: true
define view entity ZI_BE_EmployeeNumVH
  as select from zbe_employees
{
      /* Fields */
      @UI.hidden: true
  key employee_uuid as EmployeeUuid,

      @EndUserText: { label: 'Employee Number', quickInfo: 'Number of Employee' }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      employee_id   as EmployeeId,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      first_name    as FirstName,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      last_name     as LastName
}
