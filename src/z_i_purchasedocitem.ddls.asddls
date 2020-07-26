@AbapCatalog.sqlViewName: 'ZIPOITEM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Doc Items'
//@VDM.viewType: #BASIC
define view Z_I_PurchaseDocItem
  as select from zpurchase_item
  association [1..1] to Z_I_PurchaseDoc as _PODocument on $projection.PurchaseDoc = _PODocument.PurchaseDoc
  association [0..1] to I_Currency      as _Currency   on $projection.Currency = _Currency.Currency
  association [0..1] to I_UnitOfMeasure as _UOM        on $projection.Unit = _UOM.UnitOfMeasure
  association [0..1] to Z_I_POPlant     as _Plant       on $projection.Plant = _Plant.plant
{
      //zpurchase_item
      
  key purchase_doc         as PurchaseDoc,
  key purchase_item        as PurchaseDocItem,
      short_text           as PorductDesc,
      product              as Product,
      plant                as Plant,
      storage_log          as StorageLocation,
      @Semantics.amount.currencyCode: 'Currency'
      price                as Price,
      @Semantics.currencyCode: true
      currency             as Currency,
      @Semantics.quantity.unitOfMeasure: 'Unit'
      quantity             as Quantity,
      @Semantics.unitOfMeasure: true
      unit                 as Unit,
      @Semantics.amount.currencyCode: 'Currency'
      ( quantity * price ) as TotalItemPrice,
      lch_by               as LastChangedBy,
        
      _PODocument,    
      _Currency,
      _UOM,
      _Plant

}
