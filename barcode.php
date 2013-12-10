<?php
define('ANONYMOUS', true); // define do not require login
include_once('init.inc.php');
include_once('inc'.DS.'barcode'.DS.'class'.DS.'BCGFontFile.php');
include_once('inc'.DS.'barcode'.DS.'class'.DS.'BCGColor.php');
include_once('inc'.DS.'barcode'.DS.'class'.DS.'BCGDrawing.php');

// Including the barcode technology
include_once('inc'.DS.'barcode'.DS.'class'.DS.'BCGcode39.barcode.php');



$fontdir = dirname(__FILE__).DS.'inc'.DS.'barcode'.DS.'font'.DS.'Arial.ttf';
// Loading Font
$font = new BCGFontFile($fontdir, 18);

// Don't forget to sanitize user inputs
$text = isset($_GET['text']) ? $_GET['text'] : '1650-A2-00000005';

// The arguments are R, G, B for color.
$color_black = new BCGColor(0, 0, 0);
$color_white = new BCGColor(255, 255, 255);

$drawException = null;
try {
  $code = new BCGcode39();
  $code->setScale(2); // Resolution
  $code->setThickness(30); // Thickness
  $code->setForegroundColor($color_black); // Color of bars
  $code->setBackgroundColor($color_white); // Color of spaces
  $code->setFont($font); // Font (or 0)
  $code->parse($text); // Text
} catch(Exception $exception) {
  $drawException = $exception;
}

/* Here is the list of the arguments
1 - Filename (empty : display on screen)
2 - Background color */
$drawing = new BCGDrawing('', $color_white);
if($drawException) {
  $drawing->drawException($drawException);
} else {
  $drawing->setBarcode($code);
  $drawing->draw();
}

// Header that says it is an image (remove it if you save the barcode to a file)
header('Content-Type: image/png');
header('Content-Disposition: inline; filename="barcode.png"');

// Draw (or save) the image into PNG format.
$drawing->finish(BCGDrawing::IMG_FORMAT_PNG);

?>