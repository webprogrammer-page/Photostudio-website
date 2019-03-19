<?php
$output='all';
if(isset($_GET['f']) && !empty($_GET['f'])) { 
    $f = preg_replace('/[^a-z-]/', '', trim($_GET['f']));
    if ($f == trim($_GET['f'])) {
        $output=$f;
    }
}
return $output;