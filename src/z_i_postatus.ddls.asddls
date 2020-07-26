@AbapCatalog.sqlViewName: 'ZIPOSTATUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Status'

define view Z_I_POStatus as select from zpo_status {
    //zpo_status
    @ObjectModel.text.element: ['description']
    key status,
    @Semantics.language: true
    key language,
    @Semantics.text: true
    description
}
