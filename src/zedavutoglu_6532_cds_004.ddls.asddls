@AbapCatalog.sqlViewName: 'ZED_6532_V004'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Örnek 4'
define view ZEDAVUTOGLU_6532_CDS_004 as select from zed_6532_v003 
{
    vbeln,
    sum(conversion_netwr)                                                                          as Toplam_Net_Deger,
    kunnrad,
    count(*)                                                                                       as Toplam_Fatura_Adedi,
    division(cast( sum(conversion_netwr) as abap.curr( 10,3 ) ), cast( count(*) as abap.int1 ), 3) as Ortalama_Miktar,
    left(fkdat,4)                                                                                  as Faturalama_Yili,
    substring(fkdat,5,2)                                                                           as Faturalama_Ayi,
    substring(fkdat,7,2)                                                                           as Faturalama_Gunu,
    substring(inco2_l,1,3)                                                                         as Incoterm_Yeri
   
}

    group by
    vbeln,
    kunnrad,
    fkdat,
    inco2_l
    
  
