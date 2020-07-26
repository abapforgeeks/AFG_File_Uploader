@AbapCatalog.sqlViewName: 'ZIPOTOTALPRICE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Total Price'
define view Z_I_PurchaseDocTotalPrice as select from Z_I_PurchaseDoc 
association[0..1] to I_Currency as _Currency on _Currency.Currency = _Currency.Currency
{
    //Z_I_PurchaseDoc
    key PurchaseDoc,
    @Semantics.amount.currencyCode: 'Currency'
    sum(_POItems.Price ) as POTotalPrice,
      @Semantics.currencyCode: true
    _POItems.Currency as Currency,  
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
    /* Associations */
    //Z_I_PurchaseDoc
    _POItems,
    _Priority,
    _Status,
    _Currency
}group by
   PurchaseDoc,
  _POItems.Currency,
  Description,
  CompanyCode,
  POCategory,
  PurchaseOrg,
  POStatus,
  Priority,
  CreateTimeDate,
  CreatedBy,
  ChangeTimeDate,
  ChangedBy;
