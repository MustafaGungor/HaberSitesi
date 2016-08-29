<?php
header("Content-Type: text/html; charset=utf8");
$bolge = 'Bodrum';
$xml = simplexml_load_file('http://free.worldweatheronline.com/feed/weather.ashx?q='.$bolge.',Turkey&format=xml&num_of_days=2&key=a8b4c32f6e081503122808');
foreach($xml->current_condition as $hava) {
echo "<img src='$hava->weatherIconUrl' /><br />";
echo "Sıcaklık : $hava->temp_C &deg; C<br />";
echo "Nem : % $hava->humidity";
}
?>