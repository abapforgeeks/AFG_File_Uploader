@AbapCatalog.sqlViewName: 'ZIPOPRIOMAIN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Prioirty Main'
@Search.searchable: true
define view Z_I_POPriorityMain
  as select from zpo_prioritymain
  association [0..*] to Z_I_POPriority as _PriorityText on $projection.priority = _PriorityText.priority
{
      //zpo_prioritymain
      @ObjectModel.text.association: '_PriorityText'
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      @Search.ranking: #HIGH
      @EndUserText.label: 'Priority'
  key priority,
      _PriorityText

}
