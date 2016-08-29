<?php
    $baglan=pg_connect("host=localhost dbname=diller port=5432 user=postgres password=1234");
    
?>
<?php 
                if($baglan){
 
		               }
	             else 
	                  echo "Bağlantı Sağlanamadı";
	            
	            
	            $sorgu=pg_query("select * from tekonolojihaber");
	            
 ?>
 <?php
//sessionlar alındı
   session_start();
   $a=$_SESSION['kullanici'];
    $b=$_SESSION['sifre'];

?>
<?php
//aşağıdaki php kodu kişinin Internet Protokol adresini çekmektedir!
echo $_SERVER['REMOTE_ADDR'];
function GetIP(){
	if(getenv("HTTP_CLIENT_IP")) {
 		$ip = getenv("HTTP_CLIENT_IP");
 	} elseif(getenv("HTTP_X_FORWARDED_FOR")) {
 		$ip = getenv("HTTP_X_FORWARDED_FOR");
 		if (strstr($ip, ',')) {
 			$tmp = explode (',', $ip);
 			$ip = trim($tmp[0]);
 		}
 	} else {
 	$ip = getenv("REMOTE_ADDR");
 	}
	return $ip;
      }
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Haberin Merkezine Hoşgeldiniz</title>
<meta name="haber" content="" />
<meta name="inceleme" content="" />
<link href="stil.css" rel="stylesheet" type="text/css" />
<link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/piroBox.1_2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$().piroBox({
			my_speed: 600, //animation speed
			bg_alpha: 0.5, //background opacity
			radius: 4, //caption rounded corner
			scrollImage : false, // true == image follows the page, false == image remains in the same open position
			pirobox_next : 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
			pirobox_prev : 'piro_prev',// Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
			close_all : '.piro_close',// add class .piro_overlay(with comma)if you want overlay click close piroBox
			slideShow : 'slideshow', // just delete slideshow between '' if you don't want it.
			slideSpeed : 4 //slideshow duration in seconds(3 to 6 Recommended)
	});
});

</script>
<script>
function penAcKonum(adres, genislik, yukseklik, soldan, ustten)  /*javascript kodu ile yeni pencere açılır */
{
    var param = "width=" + genislik + "," + 
                "height=" + yukseklik + "," +
                "left=" + soldan + "," +
                "top=" + ustten;
    window.open(adres, "_blank", param, false);
}
function penAcKonumTest()
{
    penAcKonum("uyeol.php", 300, 400, 200, 100);
}
</script>
<style type="text/css">
.renklibuton{
cursor:pointer;
border:outset 2px #00C1C1;
background:#C6FFFF;
color:#000069;
font-weight:bold;
padding: 1px 2px;

}
</style>
</head>
<body>

<div id="templatemo_body_wrapper">
<div id="templatemo_wrapper">

	<div id="tempaltemo_header">
    	<span id="header_icon"></span>
    	<div id="header_content">
        	<div id="site_title">
				<a href="index.php"><img src="images/templatemo_logo.png" alt="LOGO" /></a>            </div>
            <p>Amacımız taraftarlık değil!.Sadece sizleri Bilgilendirmek! Doğru haberler,Düzgün bir Türkiye için çalışacağız, araştıracağız</p>
		  <a href="#" class="detail float_r">Detail</a>
		</div>
    </div> <!-- end of header -->
    
    <div id="templatemo_main_top"></div>
    <div id="templatemo_main"><span id="main_top"></span><span id="main_bottom"></span>
    	
        <div id="templatemo_sidebar">
        
        	<div id="templatemo_menu">
                <ul>
                    <li><a href="index.php">AnaHaberler</a></li>
                    <li><a href="turkgundem.php">Türkiye'den Gündem</a></li>
                    <li><a href="dunyagundem.php">Dünyadan Gündem</a></li>
                    <li><a href="teknolojigundem.php">Teknoloji Habeleri</a></li>
                    <li><a href="magazinhaber.php">Magazin Haberleri</a></li>
                     <li><a href="ekonomihaber.php">Ekonomi Haberleri</a></li>
                     <li><a href="sporhaber.php">Spor Haberleri</a></li>
                     <li><a href="gazete.php">Gazete Başlıkları</a></li>
                    <li><a href="hakkimizda.php">Hakkımızda</a></li>
                   
              </ul>    	
            </div> <!-- end of templatemo_menu -->
        
        	<div class="sidebar_box">
            	<div class="sb_title">Giriş Yap</div>
                <div class="sb_content">
                	<div id="login_form">
                      <?php
                        if(!isset($_SESSION['kullanici'])){
                   
                       ?>
                     
                     
                      <form>
                          
                          <a href="uyegiris.php">GirişYap</a>
                           
                        <input type="button" value="Üye Ol" class="renklibuton"
	onClick="penAcKonumTest()" />
                        </form>
                       <?php } else { ?>
                        <p>
                            <?php
						 $kadi=$a;
                         $pass=$b;
						 $cik="Çıkış Yap";
                        //kullanıcı kayıt kontrol
                        $sorgu2=pg_query("select * from uyeler where uyead="."'$kadi'"." and "."uyesifre="."'$pass'") or die(pg_last_error());
                        if(pg_affected_rows($sorgu2)){
					         echo '<h4>Hoşgeldiniz '.$a.'</h4><br>';
						     echo "<a href='uyecik.php'><br/>Çıkış Yap!</a>";
							 
				         }}
				        $_SESSION["kullanici"]=$kadi;
                        $_SESSION["sifre"]=$pass;
                        ?>
                            
                      </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                	</div>                  
                </div>
                <div class="sb_bottom"></div>            
            </div>
            
            <div class="sidebar_box">
            	<div class="sb_title">En fazla okunan</div>
                <div class="sb_content">
                
                	<div class="sb_news_box">
						<a href="#">Ip Adresiniz:</a>
                        <span><?php echo GetIP(); ?></span>				
                    </div>
                    
                    <div class="sb_news_box">
						<?php

                            $saat = date('h:i:s');
                            $tarih = date('d.m.y');  ?>
						<a href="#">Saat : <?php echo($saat); ?></a>
                        <span>Tarih : <?php echo($tarih); ?></span>	
                        <a href="tarih.html">Tarihe Git</a>						
                    </div>
                        
                    <a href="#"><strong>Tüm haberler</strong></a>
               </div>
               
              <div class="sb_bottom"></div>  
                        
            </div>
            
            <center>
           <a href="xhtml.php"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a> &nbsp;&nbsp;&nbsp;
            <a href="css.php"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
        	</center>
            
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->
        
        <div id="templatemo_content">
        	<?php 
        	 $i=0;
			 
        	while($sonuc=pg_fetch_object($sorgu)){
				$icerik=$sonuc->habericerik;
        	    $uzunluk=strlen($icerik);
				
        	?>
            <div class="content_box">
            	<a href="#"><img class="image_wrapper image_fl" src="images/templatemo_image_01.jpg" alt="Image 1" /></a>
            	<h2><?php echo $sonuc->haberbaslik; ?></h2>
                
                <h5><?php echo $sonuc->haberbaslik; ?></h5>
                <p><?php  if($uzunluk>50){
					     $detay=substr($icerik,0,180);
						 $i++; 
				         //$_SESSION['idno']=$i;
				         $c=$i;
					     echo $detay;
						 
						 deger($c);
					
					}
					else{ 
						echo $icerik;
						}//echo $sonuc->habericerik; 
						?></p>
                <p><?php echo $sonuc->habertarih;
				           ?></p>
                
                <?php  echo $i;?>
          </div>
          
            <?php }?>
           <?php 
		   
		      function deger($i){
				 
				   if($i==1){
					     
						 $a='.....<a href="/haberler/haber3.php?sayfa1">devamını oku</a>';
                         
						
						 echo $a;
					    
					}
				  else if($i==2){
					     $a='.....<a href="/haberler/haber3.php?sayfa2">devamını oku</a>';
						 
						 echo $a;
					      
					   }
				  else if($i==3){
					      $a='.....<a href="/haberler/haber3.php?sayfa3">devamını oku</a>';
						  $_GET['s']=$a;
						 echo $a;
					     
						 }
				  else if($i==4){ 
				          $a='.....<a href="/haberler/haber3.php?sayfa4">devamını oku</a>';
						  $_GET['s']=$a;
				         echo $a;
					     
						 }
				  else if($i==5){ 
				          $a='.....<a href="/haberler/haber3.php?sayfa5">devamını oku</a>';
						  $_GET['s']=$a;
				         echo $a;
					      
				  }
				  else if($i==6){
					      $a='.....<a href="/haberler/haber3.php?sayfa6">devamını oku</a>'; 
						  $_GET['s']=$a;
				         echo $a;
					     
				  }
				  else if($i==7){ 
				          $a='.....<a href="/haberler/haber3.php?sayfa7">devamını oku</a>';
						  $_GET['s']=$a;
				         echo $a;
					      
				  }
				  
				  
				  
			  }
					?>
                
            
                
                
            
            <div class="content_box last_box">
            	<h2>Gündemden</h2>
                
                <div id="gallery">
					<a href="images/gallery/image_01_b.jpg" class="pirobox" title="Project 1"><img src="images/gallery/image_01.jpg" alt="1" width="160" height="120" /></a>
                    <a href="images/gallery/image_02_b.jpg" class="pirobox" title="Project 2"><img src="images/gallery/image_02.jpg" alt="2" width="160" height="120"/></a>
                    <a href="images/gallery/image_03_b.jpg" class="pirobox" title="Project 3"><img src="images/gallery/image_03.jpg" alt="3" width="160" height="120" /></a>
                </div> <!-- end of Gallery -->
                
              <div class="cleaner h20"></div>    
              <a href="#"><strong>Tüm Haberler</strong></a></div>
            
        </div>
        
        <div class="cleaner"></div>    
    </div>
    
    <div id="templatemo_main_bottom">
    </div>

</div> <!-- end of wrapper -->
</div>

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
       ARASTİ SOFTWARE<a href="#"> TEKNOLOJİ'NİN YENİ ADRESİ ARASTİ </a> 
        ÖĞREN :<a href="xhtml.php">XHTML</a> &amp; 
    		 <a href="css.php">CSS</a>
    </div>
</div>
<!-- templatemo 243 web design -->
<!-- 
Web Design Template 
http://www.templatemo.com/preview/templatemo_243_web_design 
-->
</body>
</html>
