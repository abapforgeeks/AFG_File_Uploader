@AbapCatalog.sqlViewName: 'ZIPOPRIOVP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Documents On Priority'
//@VDM.viewType: #CONSUMPTION
define view Z_I_PurchaseDocPriorityOVP
  as select from Z_I_PurchaseDoc
  association [0..*] to Z_I_POPriority as _Priority on $projection.Priority = _Priority.priority
  association [0..*] to Z_I_POStatus   as _Status   on $projection.POStatus = _Status.status
{
      //Z_I_PurchaseDoc
  key PurchaseDoc,
      Description as PurchaseDescription,
      POStatus,
      _Status[1:language = 'E'].description   as StatusText,
      Priority,
      _Priority[1:language = 'E'].description as PriorityText,
       1  as TotalPODocuments,
      _Priority,
      _Status
}
