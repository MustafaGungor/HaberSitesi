<?php
function hava($sehir) { 
    $cikti=@file_get_contents("http://wap.meteor.gov.tr/simdi/".strtolower($sehir).".wml");

    if ($cikti) {

        $ayir=explode("<p align=\"center\">",$cikti);

        // gün için sıkcaklığı alalım 
        $sic=explode("C",$ayir[4]); 
        $sic=$sic[0];

        // gün için nemi alalım 
        $nem=explode("</p>:",$ayir[6]); 
        $nem=$nem[0];

        // gün için rüzgarı alalım 
        $ruzgar=explode("</p>",$ayir[7]); 
        $ruzgar=$ruzgar[0];

        // gün için basıncı alalım 
        $basinc=explode("</p>",$ayir[8]); 
        $basinc=$basinc[0];

    }

    $cikti="<table> 
        <tr><td colspan=\"4\" align=\"center\">$sehir</td></tr> 
        <tr> 
            <td align=\"center\">Şimdi</td> 
            <td align=\"center\">Sıcaklık: ".$sic." </td> 
            <td align=\"center\">".$basinc." </td> 
            <td align=\"center\">Rüzgar: ".$ruzgar."</td> 
        </tr> 
    </table> "; 
    return $cikti; 
}

echo hava("Ankara");

?>
