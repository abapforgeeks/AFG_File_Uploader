@AbapCatalog.sqlViewName: 'ZIPODOC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Documents'
//@VDM.viewType: #BASIC
define view Z_I_PurchaseDoc
  as select from zpurchase_doc
{
      @ObjectModel.text.element: ['Description']
  key purchase_doc as PurchaseDoc,
      description  as Description,
      company_code as CompanyCode,
      doc_category as POCategory,
      pruch_org    as PurchaseOrg,
      status       as POStatus,
      priority     as Priority,
      cr_time_date as CreateTimeDate,
      create_by    as CreatedBy,
      ch_time_date as ChangeTimeDate,
      change_by    as ChangedBy
}
