<?php
include("index.php");
ob_start();
session_start();
$kadi = $_POST['kadi'];
$sifre = $_POST['sifre'];
 
$sql_check = pg_query("select * from uyeler where uyead='".$kadi."' and uyesifre='".$sifre."' ") or die(pg_error());
 
if(pg_num_rows($sql_check))  {
    $_SESSION["login"] = "true";
    $_SESSION["user"] = $kadi;
    $_SESSION["pass"] = $sifre;
    header("Location:index.php");
}
else {
    if($kadi=="" or $sifre=="") {
        echo "<center>Lutfen kullanici adi ya da sifreyi bos birakmayiniz..! <a href=javascript:history.back(-1)>Geri Don</a></center>";
    }
    else {
        echo "<center>Kullanici Adi/Sifre Yanlis.<br><a href=javascript:history.back(-1)>Geri Don</a></center>";
    }
}
 
ob_end_flush();
?>

