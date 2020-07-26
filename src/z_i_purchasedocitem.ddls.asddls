@AbapCatalog.sqlViewName: 'ZIPOITEM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Doc Items'
//@VDM.viewType: #BASIC
define view Z_I_PurchaseDocItem
  as select from zpurchase_item
{
      //zpurchase_item
  key purchase_doc         as PurchaseDoc,
  key purchase_item        as PurchaseDocItem,
      short_text           as PorductDesc,
      product              as Product,
      plant                as Plant,
      storage_log          as StorageLocation,
      price                as Price,
      currency             as Currency,
      quantity             as Quantity,
      unit                 as Unit,
      ( quantity * price ) as TotalItemPrice,
      lch_by               as LastChangedBy

}
