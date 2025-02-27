@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Base view for employee'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_BE_Employee
  provider contract transactional_query
  as projection on ZR_BE_EMPLOYEE
{
  key EmployeeUuid,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_BE_EmployeeNumVH', element: 'EmployeeNumber' } }]
      EmployeeId,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      FirstName,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      LastName,
      BeginDate,
      AvailableVacationDays,
      PlannedVacationDays,
      ConsumedVacationDays,
      AvailableVDaysCriticality,
      PlannedVDaysCriticality,
      ConsumedVDaysCriticality,
      
      
      
      /* Administrative Data */
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      
      /* Associations */
      _VacationEntitlement : redirected to composition child ZC_BE_ENTITLEMENT,
      _LeaveRequests       : redirected to composition child ZC_BE_REQUESTS
            
}
