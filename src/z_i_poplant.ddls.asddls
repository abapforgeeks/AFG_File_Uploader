@AbapCatalog.sqlViewName: 'ZIPOPLANT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Plant'
define view Z_I_POPlant as select from zpo_plant {
    //zpo_plant
    key plant,
    description
}
