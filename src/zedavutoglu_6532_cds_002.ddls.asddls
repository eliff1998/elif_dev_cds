@AbapCatalog.sqlViewName: 'ZED_6532_V002'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Örnek 2'
define view ZEDAVUTOGLU_6532_CDS_002 as 
  select from vbap
{
   key vbap.vbeln,
       vbap.matnr,
   sum( netwr ) as sum_netwr,
   sum( kwmeng ) as sum_kwmeng
   
}
   where vbap.vbeln = '0000000076'
   group by vbeln,matnr
   
   
