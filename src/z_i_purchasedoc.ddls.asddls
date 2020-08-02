@AbapCatalog.sqlViewName: 'ZIPODOC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Documents'
//@VDM.viewType: #BASIC
define view Z_I_PurchaseDoc
  as select from zpurchase_doc
  association[0..*] to Z_I_PurchaseDocItem as _POItems on $projection.PurchaseDoc = _POItems.PurchaseDoc
  association[0..1] to Z_I_POStatusMain as _Status on $projection.POStatus = _Status.status
  association[0..1] to Z_I_POPriorityMain as _Priority on $projection.Priority = _Priority.priority
{
      @ObjectModel.text.element: ['Description']
  key purchase_doc as PurchaseDoc,
      description  as Description,
      company_code as CompanyCode,
      doc_category as POCategory,
      pruch_org    as PurchaseOrg,
      @ObjectModel.text.association: '_Status'
      status       as POStatus,
      @ObjectModel.text.association: '_Priority'
      priority     as Priority,
      cr_time_date as CreateTimeDate,
      create_by    as CreatedBy,
      ch_time_date as ChangeTimeDate,
      change_by    as ChangedBy,
      
      _POItems,
      _Status,
      _Priority
}
