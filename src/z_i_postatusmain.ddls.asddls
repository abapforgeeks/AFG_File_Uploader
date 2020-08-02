@AbapCatalog.sqlViewName: 'ZIPOSTATUSMAIN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'PO Status Main'
@Search.searchable: true
define view Z_I_POStatusMain as select from zpo_status_main 
association[0..*] to Z_I_POStatus as _POStatusText on $projection.status = _POStatusText.status{
    //zpo_status_main
    @Search:{ fuzzinessThreshold: 0.7,ranking: #HIGH,defaultSearchElement: true}
    @ObjectModel.text.association: '_POStatusText'
    @EndUserText.label: 'Status'
    key status,
    _POStatusText
}
