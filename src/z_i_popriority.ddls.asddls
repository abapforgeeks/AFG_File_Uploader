@AbapCatalog.sqlViewName: 'ZIPOPRIO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Priority'
@Search.searchable: true
define view Z_I_POPriority
  as select from zpo_priority
  association [0..1] to Z_I_POPriorityMain as _Priority on $projection.priority = _Priority.priority
{
      //zpo_priority
  key priority,
      @Semantics.language: true
  key language,
      @Semantics.text: true
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      @EndUserText.label: 'Priority Desc'
      description,
      _Priority
}
