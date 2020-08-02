@AbapCatalog.sqlViewName: 'ZCOVPFILTER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Filter for the Purchase Documents'
define view Z_C_OVPFilter
  as select from Z_I_PurchaseDoc
{
      @UI.lineItem:[{hidden: true}]
  key PurchaseDoc,
      @UI.selectionField: [{ exclude: false,position: 10 }]
      @Consumption.valueHelpDefinition: [{entity:{ name: 'Z_I_POPriorityMain',element: 'priority'}  }]
      '' as Priority,

      @UI.selectionField: [{ exclude: false,position: 20 }]
      @Consumption.valueHelpDefinition: [{entity:{ name: 'Z_I_POStatusMain',element: 'status'}  }]
      '' as POStatus
}
