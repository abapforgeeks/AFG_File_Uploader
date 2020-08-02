@AbapCatalog.sqlViewName: 'ZIPOSTATUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Status'
@Search.searchable: true
define view Z_I_POStatus as select from zpo_status
association[0..1] to Z_I_POStatusMain as _POStatus on $projection.status = _POStatus.status {
    //zpo_status
    @EndUserText.label: 'Status'
    key status,
    @Semantics.language: true
    key language,  
    @Semantics.text: true
    @Search:{defaultSearchElement: true,ranking: #HIGH,fuzzinessThreshold: 0.7}
    @EndUserText.label: 'Status Text'
    description,
    _POStatus
}
