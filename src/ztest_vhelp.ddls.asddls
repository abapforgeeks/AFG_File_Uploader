@AbapCatalog.sqlViewName: 'ZVHTEST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Value Help test'
define view ztest_vhelp
  as select from Z_I_PurchaseDoc
{
      //Z_I_PurchaseDoc
  key PurchaseDoc,
      Description,
      @UI.selectionField: [{ position: 10 }]
      @Consumption.valueHelpDefinition: [{ entity:{ name: 'Z_I_POPriorityMain',element: 'priority'} }]
      Priority
}
