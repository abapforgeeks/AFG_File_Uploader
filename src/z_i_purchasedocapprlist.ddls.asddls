@AbapCatalog.sqlViewName: 'ZIPOAPPROVAL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Doc Required for Approval'
//@VDM.viewType: #COMPOSITE"As we are selecting from Interface view|
define view Z_I_PurchaseDocApprList as select from Z_I_PurchaseDocTotalPrice {
    //Z_I_PurchaseDocTotalPrice
    key PurchaseDoc,
    POTotalPrice,
    Currency,
    Description,
    CompanyCode,
    POCategory,
    PurchaseOrg,
    POStatus,
    Priority,
    CreateTimeDate,
    CreatedBy,
    ChangeTimeDate,
    ChangedBy,
    
    case when POTotalPrice > 1000
    then 'Approval Required'
    else 'Not Required' end as ApprovalStatus,
    /* Associations */
    //Z_I_PurchaseDocTotalPrice
    _Currency,
    _POItems,
    _Priority,
    _Status
}
