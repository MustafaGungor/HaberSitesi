<?php
    $baglan=pg_connect("host=localhost dbname=diller port=5432 user=postgres password=1234");
    
?>
<?php 
                if($baglan){
 
		               }
	             else 
	                  echo "Bağlantı Sağlanamadı";
	         
                  ?>

<?php 	 
    session_start();
   
    $a=$_SESSION['kullanici'];
    $b=$_SESSION['sifre'];
    

?>




<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Haberin Merkezine Hoşgeldiniz</title>
<meta name="haber" content="" />
<meta name="inceleme" content="" />
<link href="stil.css" rel="stylesheet" type="text/css" />
<link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
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
<script type="text/javascript" >
      
      ekranBildirim(){
		  
		  alert("Session Başlatıldı");
		  
		  }


</script>
<script>
function penAcKonum(adres, genislik, yukseklik, soldan, ustten)
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
						<a href="#">A haber</a>
                        <span>25 September 2048</span>					
                    </div>
                    
                    <div class="sb_news_box">
						<a href="#">B Haber</a>
                        <span>18 September 2048</span>					
                    </div>
                        
                    <a href="#"><strong>Tüm haberler</strong></a>
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
        	
            <div class="content_box">
                 
                <h1><center>GAZETE BAŞLIKLARI</center></h1>
            	<h2><a href="/gazeteler/aksam.jpg"><img src="http://img.haberler.com/gazete/aksam-gazetesi/bugun_o.jpg?10_00" alt="Akşam Gazetesi" width="180" height="270"></a>
                <a href="/gazeteler/anayurt.jpg"><img src="http://img.haberler.com/gazete/anayurt-gazetesi/bugun_o.jpg?10_00" alt="Anayurt Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/aydinlik.jpg"><img src="http://img.haberler.com/gazete/aydinlik-gazetesi/bugun_o.jpg?10_00" alt="Aydınlık Gazetesi"  width="180" height="270"/>  </a><br><br/>
                <a href="/gazeteler/birgün.jpg"><img src="http://img.haberler.com/gazete/birgun-gazetesi/bugun_o.jpg?10_00" alt="Birgün Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/bugun.jpg"><img src="http://img.haberler.com/gazete/bugun-gazetesi/bugun_o.jpg?10_00" alt="Bugün Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/cumhuriyet.jpg"><img src="http://img.haberler.com/gazete/cumhuriyet-gazetesi/bugun_o.jpg?10_00" alt="Cumhuriyet Gazetesi"  width="180" height="270"/></a><br><br/>
                <a href="/gazeteler/dünya.jpg"><img src="http://img.haberler.com/gazete/dunya-gazetesi/bugun_o.jpg?10_00" alt="Dünya Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/evrensel.jpg"><img src="http://img.haberler.com/gazete/evrensel-gazetesi/bugun_o.jpg?10_00" alt="Evrensel Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/fanatik.jpg"><img src="http://img.haberler.com/gazete/fanatik-gazetesi/bugun_o.jpg?10_00" alt="Fanatik Gazetesi"  width="180" height="270"/></a><br><br/>
                <a href="/gazeteler/fotomac.jpg"><img src="http://img.haberler.com/gazete/fotomac-gazetesi/bugun_o.jpg?10_00" alt="Fotomaç Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/gunes.jpg"><img src="http://img.haberler.com/gazete/gunes-gazetesi/bugun_o.jpg?10_00" alt="Güneş Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/haberturk.jpg"><img src="http://img.haberler.com/gazete/haberturk-gazetesi/bugun_o.jpg?10_00" alt="HaberTurk Gazetesi"  width="180" height="270"/></a><br><br/>
                <a href="/gazeteler/hurriyet.jpg"><img src="http://img.haberler.com/gazete/hurriyet-gazetesi/bugun_o.jpg?10_00" alt="Hürriyet Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/milat.jpg"><img src="http://img.haberler.com/gazete/milat-gazetesi/bugun_o.jpg?10_00" alt="Milat Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/milligazete.jpg"><img src="http://img.haberler.com/gazete/milligazete-gazetesi/bugun_o.jpg?10_00" alt="Milli Gazete"  width="180" height="270"/></a><br><br/>
                <a href="/gazeteler/millet.jpg"><img src="http://img.haberler.com/gazete/millet-gazetesi/bugun_o.jpg?10_00" alt="Millet Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/milliyet.jpg"><img src="http://img.haberler.com/gazete/milliyet-gazetesi/bugun_o.jpg?10_00" alt="Milliyet Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/bugun.jpg"><img src="http://img.haberler.com/gazete/ortadogu-gazetesi/bugun_o.jpg?10_00" alt="Ortadoğu Gazetesi"  width="180" height="270"/></a><br><br/>
                <a href="/gazeteler/gundem.jpg"><img src="http://img.haberler.com/gazete/ozgur-gundem-gazetesi/bugun_o.jpg?10_00" alt="Özgür Gündem Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/posta.jpg"><img src="http://img.haberler.com/gazete/posta-gazetesi/bugun_o.jpg?10_00" alt="Posta Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/bugun.jpg"><img src="http://img.haberler.com/gazete/sabah-gazetesi/bugun_o.jpg?10_00" alt="Sabah Gazetesi"  width="180" height="270"/></a><br><br/>
                <a href="/gazeteler/sozcu.jpg"><img src="http://img.haberler.com/gazete/sozcu-gazetesi/bugun_o.jpg?10_00" alt="Sözcü Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/star.jpg"><img src="http://img.haberler.com/gazete/star-gazetesi/bugun_o.jpg?10_00" alt="Star Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/takvim.jpg"><img src="http://img.haberler.com/gazete/takvim-gazetesi/bugun_o.jpg?10_00" alt="Takvim Gazetesi"  width="180" height="270"/></a><br><br/>
                <a href="/gazeteler/taraf.jpg"><img src="http://img.haberler.com/gazete/taraf-gazetesi/bugun_o.jpg?10_00" alt="Taraf Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/turkiye.jpg"><img src="http://img.haberler.com/gazete/turkiye-gazetesi/bugun_o.jpg?10_00" alt="Türkiye Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/vahdet.jpg"><img src="http://img.haberler.com/gazete/vahdet-gazetesi/bugun_o.jpg?10_00" alt="Vahdet Gazetesi"  width="180" height="270"/></a><br><br/>
                 <a href="/gazeteler/vatan.jpg"><img src="http://img.haberler.com/gazete/vatan-gazetesi/bugun_o.jpg?10_00" alt="Vatan Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/akit.jpg"><img src="http://img.haberler.com/gazete/vakit-gazetesi/bugun_o.jpg?10_00" alt="Yeni Akit Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/yeniasya.jpg"><img src="http://img.haberler.com/gazete/yeniasya-gazetesi/bugun_o.jpg?10_00" alt="Yeni Asya Gazetesi"  width="180" height="270"/></a><br><br/>
                <a href="/gazeteler/yenicag.jpg"><img src="http://img.haberler.com/gazete/yeni-cag-gazetesi/bugun_o.jpg?10_00" alt="Yeni Çağ Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/yenimesaj.jpg"><img src="http://img.haberler.com/gazete/yeni-mesaj-gazetesi/bugun_o.jpg?10_00" alt="Yeni Mesaj Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/yenisafak.jpg"><img src="http://img.haberler.com/gazete/yenisafak-gazetesi/bugun_o.jpg?10_00" alt="Yeni Şafak Gazetesi"  width="180" height="270"/></a><br><br/>
                <a href="/gazeteler/yurt.jpg"><img src="http://img.haberler.com/gazete/yurt-gazetesi/bugun_o.jpg?10_00" alt="Yurt Gazetesi"  width="180" height="270"/></a>
                <a href="/gazeteler/zaman.jpg"><img src="http://img.haberler.com/gazete/zaman-gazetesi/bugun_o.jpg?10_00" alt="Zaman Gazetesi"  width="180" height="270"/></a>
                <a href=""></a><br><br/>
                <a href=""></a> &nbsp;</h2>
            
              <div class="cleaner h30"></div>
                <a href="#"><img class="image_wrapper image_fl" src="images/templatemo_image_02.jpg" alt="Image 2" /></a>
              <h5>Savitae velit sed dui malesu donec</h5>
              <p> Maecenas adipiscing elementum ipsum. lentesque vitae magna. Sed nec est. Suspendisse a nibh tristique justo rhoncus volutpat. endisse vitae neque eget ante.</p>
              <p> <a href="#">Dahası...</a></p>
          </div>
            
            <div class="content_box">
            	
                <div class="col_w290 float_l">
                
                  <h2 class="title_icon why_choose_us">EĞLENCE</h2>
                    
                    <p><?php
                                echo $dizi1[0][0];
                    
                    ?></p>
                    <ul class="tmo_list">
                    	<li><a href="extras/hanoi.html">Hanoi Kule Oyunu</a></li>
                      	<li><a href="extras/xox.html">XOX Oyunu</a></li>
                      	<li><a href="extras/adamasmaca.html">Basit adamasmaca!</a></li>
                  	</ul>
				</div>
                
                <div class="col_w290 cw290_last float_r">
                
                  <h2 class="title_icon new_services">Siteler</h2>
                    
                    	<ul class="tmo_list">
                    	<li><a href="#">Hava Durumu</a></li>
                      	<li><a href="#">Hikayeler</a></li>
                        <li><a href="#">Oylama</a></li>
                  </ul>
				</div>
                
                <div class="cleaner"></div>
            </div>
            
            <div class="content_box last_box">
            	<h2>Gündemden</h2>
                
                <div id="gallery">
					<a href="images/gallery/image_01_b.jpg" class="pirobox" title="Project 1"><img src="images/gallery/image_01.jpg" alt="1" width="160" height="120" /></a>
                    <a href="images/gallery/image_02_b.jpg" class="pirobox" title="Project 2"><img src="images/gallery/image_02.jpg" alt="2" width="160" height="120"/></a>
                    <a href="images/gallery/image_03_b.jpg" class="pirobox" title="Project 3"><img src="images/gallery/image_03.jpg" alt="3" width="160" height="120" /></a>
                </div> <!-- end of Gallery -->
                
              <div class="cleaner h20"></div>    
              <a href="tumhaberler.php"><strong>Tüm Haberler</strong></a></div>
            
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

</body>
</html>

