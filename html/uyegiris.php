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
    
     $sorgu=pg_query("select * from turkiyegundem");
     
	
?>
<?php 	 
    session_start();
     
    
    
  ?>


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
<style type="text/css">
.renklibuton{
cursor:pointer;
border:outset 2px #11C1C1;
background:#C6FFFF;
color:#000069;
font-weight:bold;
padding: 1px 2px;

}
</style>
<script type="text/javascript" >
      
          function ekranBildirim(){
		  
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
function  formm(a){
	alert(a);
	
	
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
   
<style type="text/css">
.renklibuton{
cursor:pointer;
border:outset 2px #00f1C1;
background:#C61F1a;
color:#000069;
font-weight:bold;
padding: 1px 2px;

}
</style>
<div id="templatemo_main_top">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <center>
  <form method="POST" action="uyegiris.php" >
  <table width="522" height="146" border="1">
      <tr width="300">
          <td width="150" height="40">Kullanıcı Adı:</td>
          <td width="190"><input type="text" name="username" width="300" height="30"  class="renklibuton"  maxlength="40"/></td>
      </tr>
      <tr>
          <td>Sifre:</td>
          <td><input type="password" width="300" name="password"  height="30" class="renklibuton"/></td>
      </tr>
      <tr>
          <td height="42"></td>
          <td><input type="submit" value="Giriş Yap" height="40" class="renklibuton"/>
          </td>
          
      </tr>
  
  </table>
  </form>
   <?php
                          $kadi=$_POST['username'];
                          $pass=$_POST['password'];
						 
   
                  if(isset($_POST['username']) && isset($_POST['password'])){
                          echo $kadi;
						  echo $pass;
						 
					}
                        //kullanıcı kayıt kontrol
                        $sorgu=pg_query("select * from uyeler where uyead="."'$kadi'"." and "."uyesifre="."'$pass'") or die(pg_last_error());
						
                        if(pg_affected_rows($sorgu)){
					         echo '<h4>Giriş Başarılı Hoşgeldiniz '.$kadi.'</h4>';                      ?><?php
							 $_SESSION['kullanici']=$kadi;
                             $_SESSION['sifre']=$pass;
							
							 
header("refresh:2;url=http://10.1.6.200");
die('2 saniye sonra anasayfaya gideceksiniz. Bu süreyi beklememek için <a href="index.php">buraya tıklayın</a>');
                            
							 
				         }
					     else{
						     echo "sorgu basarisiz";
							 $a="uyegiris.php";
							 
							 } 
				       
 ?>
                        
  </center>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
<div id="templatemo_content">
        <?php echo $kadi; ?>
        <?php echo $kadi; ?>
        <?php echo $kadi; ?>
        <?php echo $kadi; ?>
</div>
    <div id="templatemo_main">
    <!-- end of sidebar -->

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
        ARASTİ SOFTWARE<a href="#"> TEKNOLOJİ'NİN YENİ ADRESİ ARASTİ </a> 
        ÖĞREN :<a href="xhtml.php">XHTML</a> &amp; 
    		 <a href="css.php">CSS</a>
  </div>
</div>

</body>

</html>

