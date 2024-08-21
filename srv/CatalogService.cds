using { ust.suhel.shaik.datamodel } from '../db/datamodel';
 
service CatalogService @(path: 'CatalogService') {
 
   entity ProductSet as projection on datamodel.master.product;
 
   entity PoSet@(odata.draft.enabled:true) as projection on datamodel.transaction.purchaseorder;
   
   entity PoItemSet as projection on datamodel.transaction.poitems;
}