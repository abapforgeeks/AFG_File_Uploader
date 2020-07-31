@AbapCatalog.sqlViewName: 'ZCPOBUDGET'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Document Budget'
define view Z_C_PurchaseDocBudget
  as select from Z_I_PurchaseDocTotalPrice
{
      //Z_I_PurchaseDocTotalPrice
  key PurchaseDoc,
      POTotalPrice,
      @Semantics.quantity.unitOfMeasure: 'Percentage'
      division(POTotalPrice * 100, 10000, 2) as BudgetPercentage,
      Currency,
      POCategory,
      POStatus,
      Priority,
      CreatedBy,
      @Semantics.unitOfMeasure: true
      cast( '%' as abap.unit( 3 ))           as Percentage

}
