@AbapCatalog.sqlViewName: 'ZCPENDINGPOS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Document Items Pending'
define view Z_C_PendingPurchaseDocOVP
  as select from Z_I_PurchaseDocItem
{
      //Z_I_PurchaseDocItem
  key PurchaseDoc,
  key PurchaseDocItem,
      _PODocument.Description,
      PorductDesc,
      Product,
      Plant,
      StorageLocation,
      Price,
      Currency,
      Quantity,
      Unit,
      TotalItemPrice,
      LastChangedBy,
      _PODocument._Status._POStatusText.description   as StatusText,
      _PODocument._Priority._PriorityText.description as PriorityText,
      /* Associations */
      //Z_I_PurchaseDocItem
      _Currency,
      _Plant,
      _PODocument,
      _UOM
}
