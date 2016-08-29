<?php
    $baglan=pg_connect("host=localhost dbname=diller port=5432 user=postgres password=1234");
    
?>
<?php 
                if($baglan){
		             echo "Baglantý Saðlandý";
 
		               }
	             else 
	                  echo "Baðlantý Saðlanamadý";
	                
                  
                  ?>
<html>
      <head>
            <title>Üye Kayit Ekrani</title>
      </head>
      <body>
		  
          <form method="POST" action ="uyeol.php">
           <table border="1"> 
			<tr> 
                 <td><label>Adiniz* :</label></td>
                 <td><input type="text" name="ad" maxlength="30"/></td> 
             </tr> 
             <tr> 
                 <td><label>Soyadiniz* :</label></td>
                 <td><input type="text" name="soyad" maxlength="30"/></td> 
             </tr> 
             <tr> 
                 <td><label>E-Posta* :</label></td>
                 <td><input type="text" name="eposta" maxlength="30"/></td> 
             </tr> 
             <tr> 
                 <td><label>Sifre* :</label></td>
                 <td><input type="text" name="sifre" maxlength="30"/></td> 
             </tr> 
             <tr> 
                 <td><label>Yasiniz* :</label></td>
                 <td><input type="text" name="dogumtarih" maxlength="30"/></td> 
             </tr> 
             <tr> 
                 <td><label>Telefon* :</label></td>
                 <td><input type="text" name="tel" maxlength="30"/></td> 
             </tr> 
             <tr>
                  <td></td>
                  <td><input type="submit" name="buton" value="Kayýt Ol" /></td>
             </tr>
             </table>  
          </form>
          
           <?php
           
                    if(isset($_POST['ad']) && isset($_POST['soyad'])&& isset($_POST['eposta'])&& isset($_POST['sifre'])&& isset($_POST['dogumtarih'])&& isset($_POST['tel'])){
									  
									   $ad=$_POST['ad'];
									   $soyad=$_POST['soyad'];
									   $eposta=$_POST['eposta'];
									   $sifre=$_POST['sifre'];
									   $yas=$_POST['dogumtarih'];
									   $tel=$_POST['tel'];
									   
	       $ekle = pg_query("insert into uyeler(uyead,uyesoyad,uyeyas,uyetel,uyeeposta,uyesifre) values('$ad','$soyad','$yas','$tel','$eposta','$sifre');");
	                                   if($ekle){
										   echo "Great!";
									    }
									    else
									     echo "Awful!";
										   
						
									   }
							else
						  	     echo "Boþ Býrakýlamaz!";    ?> 
            
      
      </body>
</html>
