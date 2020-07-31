@AbapCatalog.sqlViewName: 'ZIPOPRIOVP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Documents On Priority'
//@VDM.viewType: #CONSUMPTION"Create this as consumption view as it is
define view Z_I_PurchaseDocPriorityOVP
  as select from Z_I_PurchaseDoc
  association [0..*] to Z_I_POPriority as _Priority on $projection.Priority = _Priority.priority
  association [0..*] to Z_I_POStatus   as _Status   on $projection.POStatus = _Status.status
{
      //Z_I_PurchaseDoc
  key PurchaseDoc,
      Description as PurchaseDescription,
      POStatus,
      _Status.description   as StatusText,
      Priority,
      _Priority.description as PriorityText,
      @Aggregation.default: #SUM
       1  as TotalPODocuments,
      _Priority,
      _Status
}
