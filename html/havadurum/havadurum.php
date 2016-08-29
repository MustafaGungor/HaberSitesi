<?php
$sehirler = array(
2344116 => "İstanbul",
2343732 => "Ankara",
2344117 => "İzmir",
2343678 => "Adana",
2343680 => "Adıyaman",
2343682 => "Afyon",
2343687 => "Ağrı",
2343707 => "Aksaray",
2343729 => "Amasya",
2343733 => "Antalya",
2343738 => "Ardahan",
2343741 => "Artvin",
2343751 => "Aydın",
2343771 => "Balıkesir",
2343781 => "Bartın",
2343786 => "Batman",
2343787 => "Bayburt",
2343810 => "Bilecik",
2343811 => "Bingöl",
2343814 => "Bitlis",
2343819 => "Bolu",
2343840 => "Burdur",
2343843 => "Bursa",
2343859 => "Çanakkale",
2343862 => "Çankırı",
2343904 => "Çorum",
2343920 => "Denizli",
2343932 => "Diyarbakır",
2343949 => "Edirne",
2343954 => "Elazığ",
2343976 => "Erzincan",
2343977 => "Erzurum",
2343980 => "Eskişehir",
2343999 => "Gaziantep",
2344018 => "Giresun",
2344042 => "Gümüşhane",
2344061 => "Hakkari",
2344073 => "Hatay",
2323778 => "Mersin",
2344094 => "Iğdır",
2344114 => "Isparta",
2344125 => "Kahramanmaraş",
2344140 => "Karabük",
2344152 => "Karaman",
2344165 => "Kars",
2344169 => "Kastamonu",
2344174 => "Kayseri",
2344196 => "Kırıkkale",
2344198 => "Kırklareli",
2324643 => "Kırşehir",
2344192 => "Kilis",
2329471 => "Kocaeli",
2344210 => "Konya",
2344239 => "Kütahya",
2344246 => "Malatya",
2344250 => "Manisa",
2344252 => "Mardin",
2344271 => "Muğla",
2344276 => "Muş",
2344285 => "Nevşehir",
2344286 => "Niğde",
2344302 => "Ordu",
2344312 => "Osmaniye",
2344336 => "Rize",
2344345 => "Sakarya",
2344351 => "Samsun",
2344385 => "Siirt",
2344394 => "Sinop",
2344398 => "Sivas",
2344354 => "Şanlıurfa",
2344396 => "Şırnak",
2344436 => "Tekirdağ",
2344446 => "Tokat",
2344452 => "Trabzon",
2344453 => "Tunceli",
2344475 => "Uşak",
2344480 => "Van",
2344489 => "Yalova",
2344529 => "Yozgat",
2344539 => "Zonguldak"
 
);		
        ?>
<select name="sehir">
<?
foreach($sehirler as $anahtar => $deger) {
?>
 
<option value="<?=$anahtar;?>"><?=$deger;?></option>
 
<?
}
?>
 
</select>
<?php
$sehir_kodu = "2344116"; // İstanbul
 
$url = "http://weather.yahooapis.com/forecastrss?w=".$sehir_kodu."&u=c"; 
$feed = file_get_contents($url);
 
preg_match('@<yweather:condition  text="(.*?)"  code="(.*?)"  temp="(.*?)"  date="(.*?)" />@', $feed, $suan_hava);
preg_match_all('/<img src="(.*)"\/>/Usi', $feed, $img);
 
 
 
$Suan_Hava_Sicakligi = $suan_hava[3];
$Suan_Hava_Ikon_Kodu = $suan_hava[2];
?>