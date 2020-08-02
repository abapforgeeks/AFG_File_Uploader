@AbapCatalog.sqlViewName: 'ZIPOSTATUSMAIN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'PO Status Main'
define view Z_I_POStatusMain as select from zpo_status_main 
association[0..*] to Z_I_POStatus as _POStatusText on $projection.status = _POStatusText.status{
    //zpo_status_main
    @ObjectModel.text.association: '_POStatusText'
    key status,
    _POStatusText
}
