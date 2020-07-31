@AbapCatalog.sqlViewName: 'ZCPOAPRLST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Approval Consumption View'
//@VDM.viewType: #CONSUMPTION
define view Z_C_purchasedocapprlist as select from Z_I_PurchaseDocApprList {
   //Z_I_PurchaseDocApprList
                    @Consumption.semanticObject: 'PurchaseDoc'
                   key PurchaseDoc,
                   POTotalPrice,
                   Currency,
                   Description,
                   POCategory,
                   POStatus,
                   Priority,
                   _Priority.description as PriorityDesc,
                   CreatedBy
                        
} where POStatus = '1' and POTotalPrice > 1000;
