@AbapCatalog.sqlViewName: 'ZIPOSTATUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Status'

define view Z_I_POStatus as select from zpo_status
association[0..1] to Z_I_POStatusMain as _POStatus on $projection.status = _POStatus.status {
    //zpo_status
    key status,
    @Semantics.language: true
    key language,  
    @Semantics.text: true
    description,
    _POStatus
}
