@AbapCatalog.sqlViewName: 'ZIPOPRIO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Priority'
define view Z_I_POPriority as select from zpo_priority {
    //zpo_priority
    @ObjectModel.text.element: ['description']
    key priority,
    @Semantics.language: true
    key language,
    @Semantics.text: true
    description
}
